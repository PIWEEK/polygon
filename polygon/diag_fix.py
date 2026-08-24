"""Two things at once:

1. Name the concrete obstruction in the doomed state (which point can no
   longer be threaded).
2. Show that real backtracking on top of the *existing* checks removes the
   stuck state entirely, so the rebuildTemporaryPolygon hack is not needed.
"""

import sys
import time
from copy import deepcopy
from random import Random

import diag_stuck as D
import polygon


def make_points(n, seed):
    rnd = Random(seed)
    pts = set()
    while len(pts) < n:
        pts.add((rnd.randrange(0, 40), rnd.randrange(0, 40)))
    pts = list(pts)
    pts.sort()
    return pts


# ---------------------------------------------------------------- obstruction

def find_culprit(points, prefix):
    ps = polygon.PolygonStruct(list(points))
    sorted_points = ps.listofpoints
    idx = {p: i for i, p in enumerate(sorted_points)}
    oracle = D.Oracle(sorted_points)
    path = [idx[p] for p in prefix]
    used = set(path)
    remaining = [i for i in range(len(sorted_points)) if i not in used]

    print("doomed path:", prefix)
    culprits = []
    for drop in remaining:
        sub = [p for p in sorted_points if idx[p] != drop]
        sub_oracle = D.Oracle(sub)
        sub_idx = {p: i for i, p in enumerate(sub)}
        try:
            got = sub_oracle.completable([sub_idx[p] for p in prefix])
        except D.Budget:
            got = None
        if got:
            culprits.append(sorted_points[drop])
    print("points whose removal makes the rest completable:", culprits)
    return culprits


# ---------------------------------------------------------------- real search

def candidates(ps):
    end = ps.lov[-1]
    epos = ps.lop[end]["i"]
    segs = ps.am.getSegmentsForAVertex(epos)
    prev = ps.lop[ps.lov[-2]]["i"] if len(ps.lov) > 1 else None
    out = []
    for a, b in segs:
        other = b if a == epos else a
        if other == prev:
            continue
        out.append(ps.loi[other]["v"])
    return out


def snapshot_edges(ps):
    return [tuple(e) for e in ps.am.adjmatrix.edges]


def restore_edges(ps, edges):
    g = ps.am.adjmatrix
    g.remove_edges_from(list(g.edges))
    g.add_edges_from(edges)


def backtracking_search(points, rnd, node_budget=20000):
    # drives its own search, so PolygonStruct's internal backtracking is off
    ps = polygon.PolygonStruct(list(points), maxbacktracks=0)
    ps.setInitialVertex()
    stats = {"nodes": 0, "undos": 0}

    def rec():
        stats["nodes"] += 1
        if stats["nodes"] > node_budget:
            raise D.Budget()
        if ps.allPointsUsed():
            return ps.checkValidFinalPolygon()
        cands = candidates(ps)
        rnd.shuffle(cands)
        for v in cands:
            snapshot = snapshot_edges(ps)
            deadends = list(ps.currentdeadends)
            depth = len(ps.lov)
            trail = len(ps.trail)
            ps.cycle(v)
            if len(ps.lov) > depth:
                if rec():
                    return True
                stats["undos"] += 1
            restore_edges(ps, snapshot)
            ps.currentdeadends = deadends
            del ps.lov[depth:]
            del ps.trail[trail:]
            ps.stuck = False
        return False

    ok = rec()
    return ps, ok, stats


def main():
    mode = sys.argv[1] if len(sys.argv) > 1 else "both"

    if mode in ("both", "culprit"):
        POINTS = [(2, 5), (2, 35), (3, 14), (3, 36), (4, 15), (4, 34), (5, 35),
                  (6, 23), (8, 18), (14, 37), (20, 9), (25, 3), (26, 9),
                  (27, 3), (27, 26), (32, 13), (34, 7), (36, 7), (37, 3),
                  (37, 25)]
        print("=== obstruction analysis ===")
        find_culprit(POINTS, [(2, 5), (27, 26), (34, 7), (36, 7)])
        print()

    if mode in ("both", "search"):
        print("=== greedy (current code) vs backtracking (same checks) ===")
        print(" n   greedy stuck   backtracking solved   nodes   undos   secs")
        for n in (16, 20, 22, 26, 30):
            runs = 10
            greedy_stuck = 0
            solved = 0
            nodes = undos = 0
            t0 = time.time()
            for r in range(runs):
                points = make_points(n, 500 + r)
                rnd = Random(9000 + r)
                polygon.choice = lambda seq: seq[rnd.randrange(len(seq))]

                ps = polygon.PolygonStruct(list(points))
                ps.setInitialVertex()
                while not ps.allPointsUsed():
                    ps.cycle()
                    if ps.stuck:
                        greedy_stuck += 1
                        break

                rnd2 = Random(9000 + r)
                try:
                    _, ok, st = backtracking_search(points, rnd2)
                except D.Budget:
                    ok, st = False, {"nodes": 20000, "undos": 0}
                if ok:
                    solved += 1
                nodes += st["nodes"]
                undos += st["undos"]
            print("%2d   %5d/%-7d  %5d/%-13d %7.0f %7.0f  %5.1f"
                  % (n, greedy_stuck, runs, solved, runs,
                     nodes / runs, undos / runs, time.time() - t0))


if __name__ == "__main__":
    main()
