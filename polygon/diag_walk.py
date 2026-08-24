"""Walk a stuck run step by step and pinpoint the step that lost the polygon."""

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


def analyse(points, seed, verbose=True):
    attempt, ps, history, idx = D.run_until_stuck(points, seed=seed)
    if ps is None:
        return None

    oracle = D.Oracle(ps.listofpoints)

    accepted = []
    for h in history:
        if len(h["after"]) > len(h["before"]):
            accepted.append(h["after"])

    verdicts = []
    first_bad = None
    for pref in accepted:
        pidx = [idx[p] for p in pref]
        try:
            ok = oracle.completable(pidx) is not None
        except D.Budget:
            ok = "budget"
        verdicts.append((pref, ok))
        if ok is False and first_bad is None:
            first_bad = len(verdicts) - 1

    if verbose:
        print("accepted prefixes and oracle verdict:")
        for i, (pref, ok) in enumerate(verdicts):
            flag = {True: "completable", False: "DOOMED", "budget": "budget"}[ok]
            print("  step %2d  len=%2d  %-12s  %s" % (i + 1, len(pref), flag, pref[-1]))

    return {
        "ps": ps,
        "history": history,
        "idx": idx,
        "oracle": oracle,
        "verdicts": verdicts,
        "first_bad": first_bad,
    }


def main():
    kind = sys.argv[1] if len(sys.argv) > 1 else "random"
    n = int(sys.argv[2]) if len(sys.argv) > 2 else 20
    seed = int(sys.argv[3]) if len(sys.argv) > 3 else 7

    points = make_points(kind, n, seed)
    print("POINTS", len(points), points)
    res = analyse(points, seed)
    if not res:
        print("no stuck state")
        return
    ps = res["ps"]
    print("\nstuck at path length", len(ps.lov), "of", ps.size)
    print("path", ps.lov)
    if res["first_bad"] is not None:
        i = res["first_bad"]
        good = res["verdicts"][i - 1][0] if i > 0 else [ps.lov[0]]
        bad = res["verdicts"][i][0]
        print("\nFIRST DOOMED STEP: step", i + 1)
        print("  still fine :", good)
        print("  doomed     :", bad)
        print("  vertex added:", bad[-1])
        print("  -> the theorem chain ACCEPTED this vertex")
    else:
        print("\nprefix stayed completable the whole way "
              "-> the stuck state is a pruning/backtracking failure")


if __name__ == "__main__":
    main()
