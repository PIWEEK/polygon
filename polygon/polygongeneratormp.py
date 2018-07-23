import sys
import polygon
import spiral
from multiprocessing import Pool, Process, Queue, Manager

manager = Manager()
uniquepolygons = manager.list()
stuckpolygons = manager.list()


def obtainPolygons(psStruct):
    global uniquepolygons
    ps = psStruct
    ps.setInitialVertex()

    while not ps.allPointsUsed():
        ps.cycle()
        if ps.stuck:
            stuckpolygons.append(ps.lov)
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
                uniquepolygons.append(ps.lov)

            return ps

    return None

def generate(cycles, vertexlist):
    global uniquepolygons
    gapolygons = []
    psStructs = []
    for i in range(cycles):
        ps = polygon.PolygonStruct(vertexlist)
        psStructs.append(ps)


    pool = Pool(4)
    for result in pool.imap_unordered(obtainPolygons, psStructs):
        if result:
            yield result.getJSON()


if __name__=="__main__":

    cycles = 500
    try:
        steps = int(sys.argv[1])
    except:
        steps = 10

    g = spiral.Spiral(xzero=1,yzero=1)
    vertexlist = list(set(g.generate(steps=steps)))
    for g in generate(cycles, vertexlist):
        print(g)
