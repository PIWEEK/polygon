"""Paired A/B test of the checkUnreachableOneNeighborNodes fix.

Same point sets, same random stream reset per run, only the check differs.
"""

import sys
from collections import Counter
from random import Random

import intersect
import polygon


def buggy_unreachable(self):
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
    pIntersect = False
    qIntersect = False
    nIntersects = {}
    for i in range(len(self.lov) - 1):
        r = self.lov[i]
        s = self.lov[i + 1]
        for n in oneNeighborNodes:
            nIntersects[n] = {"q": False, "p": False}
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


FIXED = polygon.PolygonStruct.checkUnreachableOneNeighborNodes


def make_points(n, seed):
    rnd = Random(seed)
    pts = set()
    while len(pts) < n:
        pts.add((rnd.randrange(0, 40), rnd.randrange(0, 40)))
    pts = list(pts)
    pts.sort()
    return pts


def run(points, seed):
    rnd = Random(seed)
    polygon.choice = lambda seq: seq[rnd.randrange(len(seq))]
    ps = polygon.PolygonStruct(list(points), maxbacktracks=0)
    ps.setInitialVertex()
    while not ps.allPointsUsed():
        ps.cycle()
        if ps.stuck:
            return False
    return ps.checkValidFinalPolygon()


def main():
    runs = int(sys.argv[1]) if len(sys.argv) > 1 else 300
    print(" n     buggy ok   fixed ok   flips buggy->fixed   flips fixed->buggy")
    for n in (12, 16, 20, 22, 26):
        b_ok = f_ok = up = down = 0
        for r in range(runs):
            points = make_points(n, 2000 + r)

            polygon.PolygonStruct.checkUnreachableOneNeighborNodes = buggy_unreachable
            rb = run(points, 77000 + r)

            polygon.PolygonStruct.checkUnreachableOneNeighborNodes = FIXED
            rf = run(points, 77000 + r)

            b_ok += rb
            f_ok += rf
            if rf and not rb:
                up += 1
            if rb and not rf:
                down += 1
        print("%2d   %6d/%-4d %6d/%-4d %12d %20d"
              % (n, b_ok, runs, f_ok, runs, up, down))


if __name__ == "__main__":
    main()
