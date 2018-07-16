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
    
uniquepolygons = []


t=0
try:
    cycles = int(sys.argv[1])
except:
    cycles = 1000

try:
    steps = int(sys.argv[2])
except:
    steps = 2

try:
    alist = [(int(l.split()[0]),int(l.split()[1])) for l in open(sys.argv[3],'r').readlines()]
except:
    alist = [(0, 8), (2, 1), (3, 3), (5, 4), (7,8), (8,3)]

save = False
compare = False
try:
    command = sys.argv[4]
    if command == "save":
        save = True
    elif command == "compare":
        compare = True

except:
    pass

show = False
try:
    output = sys.argv[5]
    if output == "visual":
        show = True

except:
    pass


# g = goldenspiral.GoldenSpiral()
# alist = g.generate(steps=steps)
# alist = [(50, 100), (100, 50), (50, 50), (100, 100), (85,75), (75,95), (65,75), (75,55),(75,40),(75,110),(45,75),(110,75)]
# g = spiral.Spiral(xzero=1,yzero=1)
# alist = list(set(g.generate(steps=steps)))

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
            #print("\n############# UPS BLOQUEO")

            #print("LOV",ps.lov)
            #time.sleep(2)
            break
    if ps.checkValidFinalPolygon():
        cycleinfo["subgraphs"] += ps.cycleinfo["subgraphs"]
        cycleinfo["threeone"] += ps.cycleinfo["threeone"]
        cycleinfo["unreachable"] += ps.cycleinfo["unreachable"]
        print("-",end='',flush=True)
        ps.lov.append(ps.lov[0])
        psreverse = ps.lov[:]
        psreverse.reverse()
        if len(ps.lov) == ps.size+1:
            if ps.lov not in uniquepolygons and psreverse not in uniquepolygons:
                if ps.lov < psreverse:
                    uniquepolygons.append(ps.lov)
                else:
                    uniquepolygons.append(psreverse)
                print("*",end='',flush=True)
                #print("FINAL VALID POLYGON ",ps.lov)

if save:
    savefile(uniquepolygons)
if compare:
    comparewithsavedfile(uniquepolygons)


resfile = open("templates/templatenorangesvg.gnu",'r')
template = resfile.read()
size = len(uniquepolygons)
dim = int(sqrt(size))
text = "set multiplot layout %i,%i rowsfirst"%(dim+1,dim+1)
template = template + text + "\n"



minperimeter = float(100000)
pos = 0
posper = 0
for p in uniquepolygons:
    pos+=1
    peri = perimeter(p)
    p.append(peri)
#    print("P AND PERIMETER---------------->",p,peri)
    if peri<minperimeter:
        minperimeter=peri
        posper = pos

apos = 0
xrangetext = "\nset xrange [%i:%i]\n"%(minX,maxX)
yrangetext = "\nset yrange [%i:%i]\n"%(minY,maxY)

print("MIN PERIMETER",minperimeter)
#print("POSPER",posper,minperimeter)
 
for p in uniquepolygons:
    apos +=1
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
if show:
    system("gnuplot templates/finalnew.gnu && gwenview polygons.svg 2>/dev/null")
#print("UNIQUE POLYGONS",uniquepolygons)
print("TOTAL UNIQUE POLYGONS",len(uniquepolygons))
cycleinfo["polstuck"].sort()
cycleinfo["polstuck"] =  list(k for k,_ in itertools.groupby(cycleinfo["polstuck"]))
cycleinfo["polstuck"] = []
print("CYCLE INFO",cycleinfo)
print("TOTAL UNIQUE POLYGONS",len(uniquepolygons))
