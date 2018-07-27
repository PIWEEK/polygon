import sys
import os
import time
import polygon
import spiral
from multiprocessing import Pool, Process, Queue, Manager, cpu_count

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

def writePolygonToFile(filename, polygon):
    path_to_filename = os.path.join("/tmp",filename)
    with open(path_to_filename, 'a') as dest_file:
        print(polygon.getJSON(), file=dest_file)

def psStructsIter(num, vertexlist):
    for i in range(num):
        ps = polygon.PolygonStruct(vertexlist)
        yield ps
        
def generate(cycles, vertexlist, filename):

    print("FN",filename)

    num_cores = cpu_count() -2
    pool = Pool(num_cores)
    
    batchNumber = 500
    batches = int(cycles/batchNumber)

    for p in pool.imap_unordered(obtainPolygons, psStructsIter(cycles, vertexlist)):
        if p:
            writePolygonToFile(filename, p)
            yield p.getJSON()


if __name__=="__main__":

    cycles = 500
    try:
        steps = int(sys.argv[1])
    except:
        steps = 10

    g = spiral.Spiral(xzero=1,yzero=1)
    vertexlist = list(set(g.generate(steps=steps)))
    filename = str(time.time()) + ".json"
    for g in generate(cycles, vertexlist, filename):
        print(g)
