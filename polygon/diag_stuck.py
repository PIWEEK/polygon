"""Forensic harness for the 'stuck' states of PolygonStruct.

It replays the generator step by step and, at every step, asks an independent
oracle whether the current partial path can still be completed into a simple
polygon.  That separates two very different failures:

  * the prefix was already doomed when the theorem chain accepted it
    (the checks are not sufficient), versus
  * the prefix is still completable but the pruned adjacency matrix no longer
    offers the edge that a completion needs (the pruning is unsound).
"""

import sys
import time
from random import Random

import intersect
import polygon


def build_geometry(points):
    n = len(points)
    forbidden = [[False] * n for _ in range(n)]
    for i in range(n):
        for j in range(n):
            if i == j:
                forbidden[i][j] = True
                continue
            a, b = points[i], points[j]
            for k in range(n):
                if k in (i, j):
                    continue
                if intersect.pointBelongsToSegment(a, b, points[k]):
                    forbidden[i][j] = True
                    break
    return forbidden


def edges_cross(points, e1, e2):
    return intersect.doIntersect(points[e1[0]], points[e1[1]],
                                 points[e2[0]], points[e2[1]])


class Oracle:
    """Exact 'can this prefix still be closed into a simple polygon?' test."""

    def __init__(self, points, node_budget=400000):
        self.points = points
        self.n = len(points)
        self.forbidden = build_geometry(points)
        self.node_budget = node_budget
        self.cross_cache = {}

    def crosses(self, e1, e2):
        key = (e1, e2)
        hit = self.cross_cache.get(key)
        if hit is None:
            hit = edges_cross(self.points, e1, e2)
            self.cross_cache[key] = hit
        return hit

    def legal(self, path_edges, cand):
        if self.forbidden[cand[0]][cand[1]]:
            return False
        for e in path_edges:
            if self.crosses(e, cand):
                return False
        return True

    def completable(self, path):
        """path: list of node indices, starts at path[0]. Returns a completion
        (full cycle order) or None. Raises Budget if the search is truncated."""
        self.nodes = 0
        start = path[0]
        remaining = [v for v in range(self.n) if v not in set(path)]
        path_edges = [(path[i], path[i + 1]) for i in range(len(path) - 1)]
        for e in path_edges:
            if self.forbidden[e[0]][e[1]]:
                return None
        for i, e1 in enumerate(path_edges):
            for e2 in path_edges[i + 1:]:
                if self.crosses(e1, e2):
                    return None
        result = self._dfs(list(path), set(remaining), path_edges, start)
        return result

    def _degree_prune(self, remaining, path_edges, end, start):
        """Every unused point needs two usable neighbours; the two open ends
        need at least one each."""
        end_slots = 0
        start_slots = 0
        for r in remaining:
            slots = 0
            if self.legal(path_edges, (end, r)):
                slots += 1
                end_slots += 1
            if self.legal(path_edges, (start, r)):
                slots += 1
                start_slots += 1
            for other in remaining:
                if other != r and self.legal(path_edges, (r, other)):
                    slots += 1
                    if slots >= 2:
                        break
            if slots < 2:
                return False
        return end_slots >= 1 and start_slots >= 1

    def _dfs(self, path, remaining, path_edges, start):
        self.nodes += 1
        if self.nodes > self.node_budget:
            raise Budget()
        end = path[-1]
        if not remaining:
            closing = (end, start)
            if self.forbidden[end][start]:
                return None
            for e in path_edges:
                if self.crosses(e, closing):
                    return None
            return list(path)

        if not self._degree_prune(remaining, path_edges, end, start):
            return None

        for nxt in sorted(remaining):
            cand = (end, nxt)
            if not self.legal(path_edges, cand):
                continue
            path.append(nxt)
            path_edges.append(cand)
            remaining.discard(nxt)
            got = self._dfs(path, remaining, path_edges, start)
            remaining.add(nxt)
            path_edges.pop()
            path.pop()
            if got:
                return got
        return None


class Budget(Exception):
    pass


def run_until_stuck(points, seed, max_attempts=400, oracle=None, verbose=False):
    """Drive PolygonStruct one cycle at a time, snapshotting every step."""
    rnd = Random(seed)
    polygon.choice = lambda seq: seq[rnd.randrange(len(seq))]

    for attempt in range(max_attempts):
        # maxbacktracks=0 reproduces the original greedy walk under study
        ps = polygon.PolygonStruct(list(points), maxbacktracks=0)
        ps.setInitialVertex()
        idx = {p: i for i, p in enumerate(ps.listofpoints)}
        history = []
        while not ps.allPointsUsed():
            before = list(ps.lov)
            before_edges = set(map(tuple, map(sorted, ps.am.adjmatrix.edges)))
            ps.cycle()
            history.append({
                "before": before,
                "after": list(ps.lov),
                "before_edges": before_edges,
                "after_edges": set(map(tuple, map(sorted, ps.am.adjmatrix.edges))),
                "deadends": list(ps.currentdeadends),
                "stuck": ps.stuck,
            })
            if ps.stuck:
                break
        if ps.stuck:
            return attempt, ps, history, idx
    return None, None, None, None
