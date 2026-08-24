"""Isolate the reset bug inside checkUnreachableOneNeighborNodes.

The per-node bookkeeping dict is re-initialised inside the loop over path
edges, so only the LAST path edge survives in nIntersects.  This makes the
two-endpoint branch of the theorem far weaker than intended.
"""

import sys
from collections import Counter
from random import Random

import diag_stuck as D
import intersect
import polygon
import spiral


def fixed_unreachable(self):
    graph = self.getSubGraphWithNoInitialVertex()
    if not graph:
        return True
    edges = graph.edges
    nodesA = [i[0] for i in edges]
    nodesB = [i[1] for i in edges]
    j = Counter(nodesA + nodesB)
    oneNeighborNodes = [self.loi[i]["v"] for i in j if j[i] == 1]

    p = self.initialvertex
    q = self.lov[-1]
    nIntersects = {n: {"q": False, "p": False} for n in oneNeighborNodes}
    pIntersect = qIntersect = False
    for i in range(len(self.lov) - 1):
        r = self.lov[i]
        s = self.lov[i + 1]
        for n in oneNeighborNodes:
            if intersect.doIntersect(p, n, r, s):
                nIntersects[n]["p"] = True
                pIntersect = True
            if intersect.doIntersect(q, n, r, s):
                nIntersects[n]["q"] = True
                qIntersect = True

    if len(oneNeighborNodes) == 1:
        if pIntersect and qIntersect:
            return False
    if len(oneNeighborNodes) == 2:
        for n in nIntersects:
            if nIntersects[n]["p"] and nIntersects[n]["q"]:
                return False
        pIsolated = all(nIntersects[n]["p"] for n in nIntersects)
        qIsolated = all(nIntersects[n]["q"] for n in nIntersects)
        if pIsolated or qIsolated:
            return False
    return True


def make_points(n, seed):
    rnd = Random(seed)
    pts = set()
    while len(pts) < n:
        pts.add((rnd.randrange(0, 40), rnd.randrange(0, 40)))
    pts = list(pts)
    pts.sort()
    return pts


def main():
    n = int(sys.argv[1]) if len(sys.argv) > 1 else 22
    trials = int(sys.argv[2]) if len(sys.argv) > 2 else 40

    disagreements = 0
    checks = 0
    examples = []

    original = polygon.PolygonStruct.checkUnreachableOneNeighborNodes

    for seed in range(1, trials + 1):
        points = make_points(n, seed)
        rnd = Random(seed)
        polygon.choice = lambda seq: seq[rnd.randrange(len(seq))]

        for _ in range(40):
            ps = polygon.PolygonStruct(list(points))
            ps.setInitialVertex()
            while not ps.allPointsUsed() and not ps.stuck:
                before = len(ps.lov)
                ps.cycle()
                if len(ps.lov) > before and len(ps.lov) < ps.size:
                    checks += 1
                    buggy = original(ps)
                    fixedv = fixed_unreachable(ps)
                    if buggy != fixedv:
                        disagreements += 1
                        if len(examples) < 3:
                            examples.append((list(ps.lov), buggy, fixedv))
            if ps.stuck:
                break

    print("states where the theorem was evaluated after an accepted move:", checks)
    print("buggy vs fixed disagreements:", disagreements)
    for lov, b, f in examples:
        print("\n  path:", lov)
        print("  as written -> %s | with the dict hoisted out of the loop -> %s"
              % (b, f))


if __name__ == "__main__":
    main()
