"""Find a stuck run for a 20-22 point set and locate the exact step that broke."""

import sys
from random import Random

import diag_stuck as D
import polygon
import spiral


def make_points(kind, n, seed=7):
    if kind == "spiral":
        g = spiral.Spiral(xzero=1, yzero=1)
        pts = list(set(g.generate(steps=n)))
    else:
        rnd = Random(seed)
        pts = set()
        while len(pts) < n:
            pts.add((rnd.randrange(0, 40), rnd.randrange(0, 40)))
        pts = list(pts)
    pts.sort()
    return pts


def main():
    kind = sys.argv[1] if len(sys.argv) > 1 else "random"
    n = int(sys.argv[2]) if len(sys.argv) > 2 else 20
    seed = int(sys.argv[3]) if len(sys.argv) > 3 else 7

    points = make_points(kind, n, seed)
    print("POINTS", len(points), points)

    attempt, ps, history, idx = D.run_until_stuck(points, seed=seed)
    if ps is None:
        print("no stuck state found")
        return

    print("stuck on attempt", attempt, "after", len(history), "cycle() calls")
    print("stuck path length", len(ps.lov), "of", ps.size)
    print("stuck path", ps.lov)
    print("deadends at stuck", ps.currentdeadends)
    print("cycleinfo", ps.cycleinfo)

    oracle = D.Oracle(ps.listofpoints)
    path_idx = [idx[p] for p in ps.lov]
    try:
        comp = oracle.completable(path_idx)
    except D.Budget:
        comp = "BUDGET"
    print("\nORACLE on stuck prefix:", "COMPLETABLE" if comp not in (None, "BUDGET")
          else comp)
    if comp not in (None, "BUDGET"):
        print("  a valid completion exists:", [ps.listofpoints[i] for i in comp])


if __name__ == "__main__":
    main()
