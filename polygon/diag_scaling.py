"""How the failure rate scales with the number of points."""

import sys
from random import Random

import polygon


def make_points(n, seed):
    rnd = Random(seed)
    pts = set()
    while len(pts) < n:
        pts.add((rnd.randrange(0, 40), rnd.randrange(0, 40)))
    pts = list(pts)
    pts.sort()
    return pts


def run_once(points, rnd, budget):
    polygon.choice = lambda seq: seq[rnd.randrange(len(seq))]
    ps = polygon.PolygonStruct(list(points), maxbacktracks=budget)
    ps.setInitialVertex()
    while not ps.allPointsUsed():
        ps.cycle()
        if ps.stuck:
            return ps, False
    return ps, ps.checkValidFinalPolygon()


def main():
    runs = int(sys.argv[1]) if len(sys.argv) > 1 else 300
    budget = int(sys.argv[2]) if len(sys.argv) > 2 else 0
    print("maxbacktracks =", budget)
    print(" n   runs   stuck    valid   stuck%%   mean stuck depth")
    for n in (8, 10, 12, 14, 16, 18, 20, 22, 26, 30):
        stuck = valid = 0
        depths = []
        rnd = Random(12345)
        for r in range(runs):
            points = make_points(n, 1000 + r)
            ps, ok = run_once(points, rnd, budget)
            if ps.stuck:
                stuck += 1
                depths.append(len(ps.lov) / ps.size)
            elif ok:
                valid += 1
        mean_depth = sum(depths) / len(depths) if depths else 0
        print("%2d  %5d  %5d    %5d   %5.1f%%   %.2f of the way in"
              % (n, runs, stuck, valid, 100.0 * stuck / runs, mean_depth))


if __name__ == "__main__":
    main()
