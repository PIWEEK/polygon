"""Compare the theorem chain's verdict against ground truth, candidate by candidate.

At a state that is still completable, every unused vertex is scored twice:
  * oracle  - does a simple polygon still exist if we go there?
  * chain   - does PolygonStruct's chain of checks accept the move?
Disagreements are the whole story.
"""

import sys
from copy import deepcopy
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


def fresh(points, prefix):
    ps = polygon.PolygonStruct(list(points), maxbacktracks=0)
    ps.setInitialVertex()
    for v in prefix[1:]:
        ps.cycle(v)
    return ps


def chain_accepts(points, prefix, cand):
    ps = fresh(points, prefix)
    before = len(ps.lov)
    ps.cycle(cand)
    return len(ps.lov) > before


def main():
    kind = sys.argv[1] if len(sys.argv) > 1 else "random"
    n = int(sys.argv[2]) if len(sys.argv) > 2 else 20
    seed = int(sys.argv[3]) if len(sys.argv) > 3 else 7

    points = make_points(kind, n, seed)
    attempt, ps_stuck, history, idx = D.run_until_stuck(points, seed=seed)
    if ps_stuck is None:
        print("no stuck state")
        return
    sorted_points = ps_stuck.listofpoints
    oracle = D.Oracle(sorted_points)

    accepted = [h["after"] for h in history if len(h["after"]) > len(h["before"])]

    # find the last prefix that was still completable
    good_prefix = [sorted_points[0]]
    for pref in accepted:
        pidx = [idx[p] for p in pref]
        try:
            if oracle.completable(pidx) is None:
                break
        except D.Budget:
            break
        good_prefix = pref

    print("POINTS", sorted_points)
    print("\nlast healthy prefix:", good_prefix)
    used = set(good_prefix)
    remaining = [p for p in sorted_points if p not in used]

    rows = []
    for cand in remaining:
        pidx = [idx[p] for p in good_prefix + [cand]]
        try:
            ok = oracle.completable(pidx) is not None
        except D.Budget:
            ok = None
        acc = chain_accepts(points, good_prefix, cand)
        rows.append((cand, ok, acc))

    print("\ncandidate      oracle        chain")
    fp = fn = 0
    for cand, ok, acc in rows:
        o = {True: "completable", False: "doomed", None: "budget"}[ok]
        a = "ACCEPT" if acc else "reject"
        mark = ""
        if ok is False and acc:
            mark = "   <-- FALSE ACCEPT (believes a dead branch)"
            fp += 1
        if ok is True and not acc:
            mark = "   <-- FALSE REJECT (throws away a real polygon)"
            fn += 1
        print("%-14s %-13s %-7s%s" % (str(cand), o, a, mark))

    print("\nfalse accepts:", fp, " false rejects:", fn)


if __name__ == "__main__":
    main()
