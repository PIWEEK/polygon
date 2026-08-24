"""Aggregate statistics over many stuck events.

Answers three questions:
  1. When the generator declares itself stuck, was the path still completable?
  2. How often does the theorem chain accept a move that kills the polygon?
  3. Does the chain ever reject a move that was actually fine (unsound pruning)?
"""

import sys
from random import Random

import diag_stuck as D
import polygon
import spiral


def make_points(kind, n, seed):
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


def chain_accepts(points, prefix, cand):
    ps = polygon.PolygonStruct(list(points), maxbacktracks=0)
    ps.setInitialVertex()
    for v in prefix[1:]:
        ps.cycle(v)
    before = len(ps.lov)
    ps.cycle(cand)
    return len(ps.lov) > before


def main():
    kind = sys.argv[1] if len(sys.argv) > 1 else "random"
    n = int(sys.argv[2]) if len(sys.argv) > 2 else 20
    trials = int(sys.argv[3]) if len(sys.argv) > 3 else 12

    stuck_completable = 0
    stuck_doomed = 0
    stuck_budget = 0
    total_false_accept = 0
    total_false_reject = 0
    total_candidates = 0
    stuck_lengths = []

    for seed in range(1, trials + 1):
        points = make_points(kind, n, seed)
        attempt, ps, history, idx = D.run_until_stuck(points, seed=seed)
        if ps is None:
            continue
        sorted_points = ps.listofpoints
        oracle = D.Oracle(sorted_points, node_budget=200000)
        stuck_lengths.append((len(ps.lov), ps.size))

        pidx = [idx[p] for p in ps.lov]
        try:
            ok = oracle.completable(pidx) is not None
        except D.Budget:
            ok = None
        if ok is True:
            stuck_completable += 1
        elif ok is False:
            stuck_doomed += 1
        else:
            stuck_budget += 1

        # audit the last healthy state of this run
        accepted = [h["after"] for h in history if len(h["after"]) > len(h["before"])]
        good_prefix = [sorted_points[0]]
        for pref in accepted:
            try:
                if oracle.completable([idx[p] for p in pref]) is None:
                    break
            except D.Budget:
                break
            good_prefix = pref

        used = set(good_prefix)
        for cand in [p for p in sorted_points if p not in used]:
            try:
                o = oracle.completable([idx[p] for p in good_prefix + [cand]]) is not None
            except D.Budget:
                continue
            a = chain_accepts(points, good_prefix, cand)
            total_candidates += 1
            if a and not o:
                total_false_accept += 1
            if o and not a:
                total_false_reject += 1

        print("seed %2d: stuck at %2d/%2d  prefix=%s"
              % (seed, len(ps.lov), ps.size,
                 {True: "COMPLETABLE", False: "doomed", None: "budget"}[ok]))

    print("\n=== summary over %d stuck events (%d points) ===" % (
        stuck_completable + stuck_doomed + stuck_budget, n))
    print("stuck while still completable :", stuck_completable)
    print("stuck on a doomed path        :", stuck_doomed)
    print("undecided (budget)            :", stuck_budget)
    print("\ncandidate audit at last healthy state: %d candidates" % total_candidates)
    print("  false accepts (chain says OK, no polygon exists):", total_false_accept)
    print("  false rejects (chain says NO, polygon existed)  :", total_false_reject)


if __name__ == "__main__":
    main()
