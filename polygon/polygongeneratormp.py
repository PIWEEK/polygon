import sys
import polygon
import spiral
from multiprocessing import Pool, Process, Queue
import multiprocessing as mp

ctx = mp.get_context('spawn')
q = ctx.Queue()

g = spiral.Spiral(xzero=1,yzero=1)
steps = 10
vertexlist = list(set(g.generate(steps=steps)))

def obtainPolygon(n):
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
        if ps.lov > psreverse:
            ps.lov = psreverse
        print("cycles",n)
        q.put(ps.getJSON())
#        return ps.lov
    # else:
    #     q.put(None)
    #return None

def generate(cycles, vertexlist):
   
    uniquepolygons = []
    pool = Pool(4) 

    psStructList = []
    

    pool.map(obtainPolygon, range(500))
    #pool.apply_async(obtainPolygon,range(500),1)
    #p = mp.Process(target=foo, args=(q,))
    #p.start()
    h = q.get()
    yield h
    


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