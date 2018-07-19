import polygon
import sys
from math import sqrt
from os import system
import time
import itertools
import hashlib
import goldenspiral, spiral
from multiprocessing import Pool, Queue, Lock, Manager
from multiprocessing.pool import ThreadPool


manager = Manager()
uniquepolygons = manager.list()
stuckpolygons = manager.list()


def perimeter(polygon):

    p = float(0)
    polygonp = polygon[:-1]
    for i in range(len(polygonp)-1):
        a = polygon[i]
        b = polygon[i+1]
        p += sqrt(abs(a[0]-b[0])+abs(a[1]-b[1]))
    return p

def area(polygon):
    area = float(0)
    j = len(polygon)-2
    
    X = [p[0] for p in polygon[:-1]]
    Y = [p[1] for p in polygon[:-1]]
    for i in range(len(polygon)-1):
        area += (X[j]+X[i]) * (Y[j]-Y[i])
        j=i
    return abs(area/2)

def comparewithsavedfile(uniquepolygons):
    m = hashlib.sha256()
    uniquepolygons.sort()
    uniquepolygonsbytestring = str(uniquepolygons).encode()
    m.update(uniquepolygonsbytestring)
    filename = m.hexdigest()
    try:
        f = eval(open(filename,'r').read())
        if f[:] == uniquepolygons[:]:
            print("\nTEST OK",filename)
            return True
        else:
            print("\nTEST ERROR (different content) for",filename)
            return False
    except:
        print("\nTEST ERROR (different hash) for",filename)
        return False

def savefile(uniquepolygons):
    m = hashlib.sha256()
    uniquepolygons.sort()
    uniquepolygonsbytestring = str(uniquepolygons).encode()
    m.update(uniquepolygonsbytestring)
    filename = m.hexdigest()
    f = open(filename,'w')
    f.write(str(uniquepolygons))
    f.write("\n")
    f.close()
    print("SAVED",filename)

def obtainPolygons(psStruct):
    global uniquepolygons
    ps = psStruct
    ps.setInitialVertex()

    while not ps.allPointsUsed():
        ps.cycle()
        if ps.stuck:
            print("!",end='',flush=True)
            stuckpolygons.append(ps.lov)
            break

    if ps.checkValidFinalPolygon():
        print(".",end='',flush=True)
        ps.lov.append(ps.initialvertex)
        psreverse = ps.lov[:]
        psreverse.reverse()

        # if ps.lov < psreverse:
        #     return ps.lov
        # else:
        #     ps.lov = psreverse
        #     return ps.lov
        
        if ps.lov not in uniquepolygons and psreverse not in uniquepolygons:
            print("*",end='',flush=True)
 
            
            if ps.lov < psreverse:
                uniquepolygons.append(ps.lov)
            else:
                ps.lov = psreverse
                uniquepolygons.append(ps.lov)
                
            # lock.release()
            return ps.lov
        else:
            print("-",end='',flush=True)
        # lock.release()

def init(l):
    global lock
    lock = l

def runTest(cycles, steps, alist, action, visual, stuck, single, intersect):

    global uniquepolygons

    jsonpolygons = []
    t=0


    print("LOP",alist)
    xValues = [i[0] for i in alist]
    yValues = [i[1] for i in alist]
    xValues.sort()
    yValues.sort()
    minX = xValues[0]
    maxX = xValues[-1]
    minY = yValues[0]
    maxY = yValues[-1]


    cycleinfo = {"subgraphs":0, "threeone":0,"unreachable":0, "stuck":0, "firstnodeisolated": 0, "polstuck":[]}


    if intersect:
        ps = polygon.PolygonStruct(alist)
        ps.setInitialVertex()
        ps.generateIntersectMatrix()
        print("INTERSECT MATRIX",ps.intersectmatrix)


    
    gaps = 500
    steps = int(cycles/gaps)
    gapolygons = []
    for s in range(steps):
        psStructs = []

        for g in range(gaps):
            ps = polygon.PolygonStruct(alist)
            psStructs.append(ps)
   

        pool = Pool(processes=7)#,initializer=init, initargs=(l,))
        polygons = pool.map(obtainPolygons, psStructs)
        pool.close()
        pool.join()
        gapolygons.extend(polygons)
        gapolygons = [p for p in gapolygons if p]
        print("\n############# CYCLE NUMBER and NUMBER OF POLYGONS SO FAR:",gaps*(s+1),len(gapolygons))
        time.sleep(2)

    
    #uniquepolygons = [p for p in gapolygons if p]
         
    #print("UP",uniquepolygons)


# PERIMETER COMPUTE
    uniquepolygons = uniquepolygons[:]
    minperimeter = float(1000000)
    pos = 0
    posper = 0
    for p in uniquepolygons:
        pos+=1
        peri = perimeter(p)
        p.append(peri)
        if peri<minperimeter:
            minperimeter=peri
            posper = pos

    print("\nMIN PERIMETER",minperimeter)


# AREA COMPUTE

    minarea = float(1000000)
    pos = 0
    posper = 0
    for p in uniquepolygons:
        pos+=1
        areap = area(p)
        p.append(areap)
        if areap<minarea:
            minarea=areap
            posper = pos

    print("\nMIN AREA",minarea)

# SAVE OR COMPARE

    if action == 'save':
        savefile(uniquepolygons)
    elif action == 'check':
        comparewithsavedfile(uniquepolygons)

# VISUAL
    if visual:

        resfile = open("templates/templatenorangesvg.gnu",'r')
        template = resfile.read()
        size = len(uniquepolygons)
        dim = int(sqrt(size))
        text = "set multiplot layout %i,%i rowsfirst"%(dim+1,dim+1)
        template = template + text + "\n"

        xrangetext = "\nset xrange [%i:%i]\n"%(minX-2,maxX+2)
        yrangetext = "\nset yrange [%i:%i]\n"%(minY-2,maxY+2)
        template = template + xrangetext + yrangetext
 
        for p in uniquepolygons:
            ptext = "set object 1 polygon from "
            for i in p[:-2]:
                ptext += "%i, %i to "%(i[0],i[1])

            if p[-2]==minperimeter:
                ptext += " %i, %i fillstyle solid 0.5"%(p[0][0],p[0][1])

            elif p[-1]==minarea:
                ptext += " %i, %i fillstyle solid 0.9"%(p[0][0],p[0][1])

            else:
                ptext += " %i, %i fillstyle solid 0.2"%(p[0][0],p[0][1])

            template = template + ptext +"\nplot f(x) with lines ls 1\n"
        finaltext = open("templates/finalnew.gnu","w")
        finaltext.write(template)
        finaltext.close()
        system("gnuplot templates/finalnew.gnu && gwenview polygons.svg 2>/dev/null &")
  
    cycleinfo = {}
    cycleinfo["polstuck"] = stuckpolygons[:]
    cycleinfo["polstuck"].sort()
    cycleinfo["polstuck"] =  list(k for k,_ in itertools.groupby(cycleinfo["polstuck"]))

    if stuck:
        resfile = open("templates/templatestuck.gnu",'r')
        template = resfile.read()
        size = len(cycleinfo["polstuck"])
        dim = int(sqrt(size))
        text = "set multiplot layout %i,%i rowsfirst"%(dim+1,dim+1)
        template = template + text + "\n"

        xrangetext = "\nset xrange [%i:%i]\n"%(minX-2,maxX+2)
        yrangetext = "\nset yrange [%i:%i]\n"%(minY-2,maxY+2)

        ptext = ""
        for p in cycleinfo["polstuck"]:
            ptext += "\n$data << EOD"

            for i in p:
                ptext += "\n%i %i"%(i[0],i[1])
            remainingpoints = set(ps.listofpoints) - set(p)
            ptext += "\n"
            for i in remainingpoints:
                ptext += "\n%i %i"%(i[0],i[1])
            ptext += "\nEOD\n\n"

            ptext += """\nplot "$data" every :::0::0 with linespoints ls 1, "" every :::1::1  with points pointtype 5 pointsize 1.5\n"""

        template = template + xrangetext + yrangetext + ptext
        finaltext = open("templates/stuck.gnu","w")
        finaltext.write(template)
        finaltext.close()
        system("gnuplot templates/stuck.gnu && gwenview stuckpolygons.svg 2>/dev/null &")


    #cycleinfo["polstuck"] = []
    #print("CYCLE INFO",cycleinfo)
    print("TOTAL UNIQUE POLYGONS",len(uniquepolygons))


if __name__=="__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("cycles", help="set the number of compute cycles",
                    type=int)
    parser.add_argument("--steps", help="set the number of steps for the spiral polygon generation",
                    type=int)
    parser.add_argument("--inputfile", help="set the file containing the input points")
    parser.add_argument("--action", help="save or check")
    parser.add_argument("--visual", help="show visual ouput",
                    action="store_true")
    parser.add_argument("--stuck", help="show visual ouput for stuck protopolygons",
                    action="store_true")
    parser.add_argument("--single", help="output polygons as we find them",
                    action="store_true")
    parser.add_argument("--intersect", help="generate intersect matrix of all points",
                    action="store_true")



    args = parser.parse_args()


    cycles = args.cycles
    if args.steps:
        steps = args.steps
    else:
        steps = 1

    if args.inputfile:
        alist = [(int(l.split()[0]),int(l.split()[1])) for l in open(args.inputfile,'r').readlines()]
    else:
        g = spiral.Spiral(xzero=1,yzero=1)
        alist = list(set(g.generate(steps=steps)))
    
    if args.action:
        action = args.action
    else:
        action = "nothing"
    
    if args.visual:
        visual = True
    else:
        visual = False

    if args.stuck:
        stuck = True
    else:
        stuck = False

    if args.single:
        single = True
    else:
        single = False

    if args.intersect:
        intersect = True
    else:
        intersect = False

    runTest(cycles,steps,alist,action,visual,stuck,single,intersect)
