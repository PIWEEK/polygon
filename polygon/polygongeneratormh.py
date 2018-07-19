import sys
import polygon
import spiral
from multiprocessing import Pool, Queue
from multiprocessing.dummy import Pool as ThreadPool

uniquepolygons = []

q = Queue()

def obtainPolygons(psStruct):
    ps = psStruct
    ps.setInitialVertex()

    while not ps.allPointsUsed():
        ps.cycle()
        if ps.stuck:
            break

    if ps.checkValidFinalPolygon():
        ps.lov.append(ps.initialvertex)
        psreverse = ps.lov[:]
        psreverse.reverse()
        if ps.lov > psreverse:
            ps.lov = psreverse
        
        if ps.lov not in uniquepolygons and psreverse not in uniquepolygons:
            return ps.lov
            # uniquepolygons.append(ps.lov)

            #print(ps.getJSON())
        # else:
        #     print(ps.getJSON())
            #return ps.getJSON()


def generate(cycles, vertexlist):

    pool = Pool(7) 

    psStructs = []
    for i in range(cycles):
        ps = polygon.PolygonStruct(vertexlist)
        psStructs.append(ps)

    for p in  pool.map(obtainPolygons, psStructs):
        print("P",p)

    pool.close()

    pool.join()

    # for i in range(cycles):
    #     ps = polygon.PolygonStruct(vertexlist)
    #     ps.setInitialVertex()

    #     while not ps.allPointsUsed():
    #         ps.cycle()
    #         if ps.stuck:
    #             break

    #     if ps.checkValidFinalPolygon():
    #         ps.lov.append(ps.initialvertex)
    #         psreverse = ps.lov[:]
    #         psreverse.reverse()

    #         if ps.lov not in uniquepolygons and psreverse not in uniquepolygons:
    #             if ps.lov < psreverse:
    #                 uniquepolygons.append(ps.lov)
    #             else:
    #                 uniquepolygons.append(psreverse)

    #             yield ps.getJSON()


if __name__=="__main__":

    cycles = 500
    try:
        steps = int(sys.argv[1])
    except:
        steps = 10

    g = spiral.Spiral(xzero=1,yzero=1)
    vertexlist = list(set(g.generate(steps=steps)))
    generate(cycles, vertexlist)
    