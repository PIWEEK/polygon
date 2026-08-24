"""Visualise the moment the theorem chain approves a dead branch."""

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from random import Random

import diag_stuck as D
import polygon


POINTS = [(2, 5), (2, 35), (3, 14), (3, 36), (4, 15), (4, 34), (5, 35), (6, 23),
          (8, 18), (14, 37), (20, 9), (25, 3), (26, 9), (27, 3), (27, 26),
          (32, 13), (34, 7), (36, 7), (37, 3), (37, 25)]

HEALTHY = [(2, 5), (27, 26), (34, 7)]
FATAL = (36, 7)
RESCUE = (26, 9)


def build(prefix):
    ps = polygon.PolygonStruct(list(POINTS), maxbacktracks=0)
    ps.setInitialVertex()
    for v in prefix[1:]:
        ps.cycle(v)
    return ps


def chain_accepts(prefix, cand):
    ps = build(prefix)
    before = len(ps.lov)
    ps.cycle(cand)
    return len(ps.lov) > before


def draw_path(ax, path, color="#1f4e79", lw=2.6):
    xs = [p[0] for p in path]
    ys = [p[1] for p in path]
    ax.plot(xs, ys, "-", color=color, lw=lw, zorder=5, solid_capstyle="round")
    ax.plot(xs[0], ys[0], "s", color="#1f4e79", ms=11, zorder=7)
    ax.plot(xs[-1], ys[-1], "o", color="#c00000", ms=10, zorder=7)


def panel_a(ax, oracle, idx):
    ax.set_title("A. State the chain trusts: 1 of 17 moves actually survives",
                 fontsize=11, loc="left")
    used = set(HEALTHY)
    for p in POINTS:
        if p in used:
            continue
        pidx = [idx[q] for q in HEALTHY + [p]]
        ok = oracle.completable(pidx) is not None
        acc = chain_accepts(HEALTHY, p)
        if ok:
            ax.plot(*p, "o", color="#2e7d32", ms=13, zorder=6)
            ax.annotate("only real move", p, textcoords="offset points",
                        xytext=(9, 6), fontsize=8, color="#2e7d32")
        elif acc:
            ax.plot(*p, "X", color="#c62828", ms=12, zorder=6)
        else:
            ax.plot(*p, "o", color="#b0b0b0", ms=7, zorder=4)
        if acc:
            ax.plot([HEALTHY[-1][0], p[0]], [HEALTHY[-1][1], p[1]], "--",
                    color="#c62828" if not ok else "#2e7d32", lw=1.0, alpha=.65)
    draw_path(ax, HEALTHY)


def panel_b(ax, ps):
    ax.set_title("B. After the fatal move: the candidate graph still looks healthy",
                 fontsize=11, loc="left")
    path = ps.lov
    used = set(path)
    for e in ps.am.adjmatrix.edges:
        a = ps.loi[e[0]]["v"]
        b = ps.loi[e[1]]["v"]
        if a in used and b in used:
            continue
        ax.plot([a[0], b[0]], [a[1], b[1]], "-", color="#9ecae1", lw=.7,
                alpha=.85, zorder=2)
    for p in POINTS:
        if p not in used:
            ax.plot(*p, "o", color="#404040", ms=6, zorder=6)
    draw_path(ax, path)


def panel_c(ax, ps0, ps1):
    ax.set_title("C. Adjacency matrix: edges surviving before / after the move",
                 fontsize=11, loc="left")
    n = len(POINTS)
    grid = [[0] * n for _ in range(n)]
    for i, j in ps0.am.adjmatrix.edges:
        grid[i][j] = grid[j][i] = 1
    for i, j in ps1.am.adjmatrix.edges:
        grid[i][j] = grid[j][i] = 2
    ax.imshow(grid, cmap="Blues", interpolation="nearest", vmin=0, vmax=2)
    ax.set_xlabel("point index")
    ax.set_ylabel("point index")


def panel_d(ax):
    ax.set_title("D. Stuck rate grows with the number of points", fontsize=11,
                 loc="left")
    ns = [8, 10, 12, 14, 16, 18, 20, 22, 26, 30]
    rate = [6.5, 15.0, 25.5, 34.0, 51.5, 62.0, 60.5, 73.0, 80.0, 88.5]
    ax.plot(ns, rate, "o-", color="#c62828", lw=2)
    ax.set_xlabel("number of points")
    ax.set_ylabel("runs that end stuck (%)")
    ax.grid(alpha=.3)
    ax.set_ylim(0, 100)


def main():
    ps_sorted = polygon.PolygonStruct(list(POINTS))
    idx = {p: i for i, p in enumerate(ps_sorted.listofpoints)}
    oracle = D.Oracle(ps_sorted.listofpoints)

    ps0 = build(HEALTHY)
    ps1 = build(HEALTHY + [FATAL])

    fig, axes = plt.subplots(2, 2, figsize=(13, 11))
    panel_a(axes[0][0], oracle, idx)
    panel_b(axes[0][1], ps1)
    panel_c(axes[1][0], ps0, ps1)
    panel_d(axes[1][1])
    for ax in (axes[0][0], axes[0][1]):
        ax.set_aspect("equal")
        ax.grid(alpha=.2)
    fig.suptitle("Why PolygonStruct gets stuck: the checks are necessary, never sufficient",
                 fontsize=13)
    fig.tight_layout()
    fig.savefig("diag_stuck.png", dpi=130)
    print("wrote diag_stuck.png")


if __name__ == "__main__":
    main()
