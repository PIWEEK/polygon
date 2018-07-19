import sys
import polygon
import spiral


def generate(cycles, vertexlist):
    uniquepolygons = []

    for i in range(cycles):
        ps = polygon.PolygonStruct(vertexlist)
        ps.setInitialVertex()

        while not ps.allPointsUsed():
            ps.cycle()
            if ps.stuck:
                break

        if ps.checkValidFinalPolygon():
            ps.lov.append(ps.initialvertex)
            psreverse = ps.lov[:]
            psreverse.reverse()

            if ps.lov not in uniquepolygons and psreverse not in uniquepolygons:
                if ps.lov < psreverse:
                    uniquepolygons.append(ps.lov)
                else:
                    ps.lov = psreverse
                    uniquepolygons.append(psreverse)

                yield ps.getJSON()


if __name__=="__main__":

    cycles = 500
    try:
        steps = int(sys.argv[1])
    except:
        steps = 10

    g = spiral.Spiral(xzero=1,yzero=1)
    vertexlist = list(set(g.generate(steps=steps)))
    for p in generate(cycles, vertexlist):
        print(p)