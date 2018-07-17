import polygon
import sys
from math import sqrt
from os import system
import time
import itertools
import hashlib
import goldenspiral, spiral

def perimeter(polygon):

    p = float(0)
    for i in range(len(polygon)-1):
        a = polygon[i]
        b = polygon[+1]
        p += sqrt(abs(a[0]-b[0])+abs(a[1]-b[1]))
    return p


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

def runTest(cycles, steps, alist, action, visual, stuck):

    uniquepolygons = []
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


    cycleinfo = {"subgraphs":0, "threeone":0,"unreachable":0, "stuck":0, "polstuck":[]}

    for i in range(cycles):
        print(".",end='',flush=True)
        c=0
        t+=1

        if t%500==0:
            print("\n############# CYCLE NUMBER and NUMBER OF POLYGONS SO FAR:",t,len(uniquepolygons))
            time.sleep(2)

        ps = polygon.PolygonStruct(alist)
        ps.setInitialVertex()
        oldq = (-1,-1)
        while not ps.allPointsUsed():
            ps.cycle()
            if ps.lov[-1] == oldq:
                c+=1
            else:
                c=0
                oldq = ps.lov[-1]
            if c> 10:
                cycleinfo["stuck"] +=1
                cycleinfo["polstuck"].append(ps.lov)
                c=0
                print("!",end='',flush=True)
                break

        if ps.checkValidFinalPolygon():
            cycleinfo["subgraphs"] += ps.cycleinfo["subgraphs"]
            cycleinfo["threeone"] += ps.cycleinfo["threeone"]
            cycleinfo["unreachable"] += ps.cycleinfo["unreachable"]
            print("-",end='',flush=True)
            ps.lov.append(ps.lov[0])
            psreverse = ps.lov[:]
            psreverse.reverse()
#            if len(ps.lov) == ps.size+1:
            if ps.lov not in uniquepolygons and psreverse not in uniquepolygons:
                if ps.lov < psreverse:
                    uniquepolygons.append(ps.lov)
                else:
                    uniquepolygons.append(psreverse)
                print("*",end='',flush=True)


# PERIMETER COMPUTE

    minperimeter = float(100000)
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

 
        for p in uniquepolygons:
            ptext = "set object 1 polygon from "
            for i in p[:-2]:
                ptext += "%i, %i to "%(i[0],i[1])

            if p[-1]==minperimeter:
                ptext += "%i, %i to %i, %i fillstyle transparent solid 0.9"%(p[-2][0],p[-2][1],p[0][0],p[0][1])

            else:
                ptext += "%i, %i to %i, %i fillstyle transparent solid 0.3"%(p[-2][0],p[-2][1],p[0][0],p[0][1])

            template = template + xrangetext + yrangetext + ptext +"\nplot f(x) with lines ls 1\n"
        finaltext = open("templates/finalnew.gnu","w")
        finaltext.write(template)
        finaltext.close()
        system("gnuplot templates/finalnew.gnu && gwenview polygons.svg 2>/dev/null &")
    print("TOTAL UNIQUE POLYGONS",len(uniquepolygons))
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

            ptext += """\nplot "$data" every :::0::0 with linespoints pointtype 2 pointsize 2, "" every :::1::1  with points pointtype 1 pointsize 3\n"""

        template = template + xrangetext + yrangetext + ptext
        finaltext = open("templates/stuck.gnu","w")
        finaltext.write(template)
        finaltext.close()
        system("gnuplot templates/stuck.gnu && gwenview stuckpolygons.svg 2>/dev/null &")


    cycleinfo["polstuck"] = []
    print("CYCLE INFO",cycleinfo)
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

    runTest(cycles,steps,alist,action,visual, stuck)
