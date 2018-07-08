import poly
from math import sqrt
from os import system
import time


def perimeter(polygon):

    p = float(0)
    for i in range(len(polygon)-1):
        a = polygon[i]
        b = polygon[+1]
        p += sqrt(abs(a[0]-b[0])+abs(a[1]-b[1]))
    return p

alist = [(0, 8), (2, 1), (3, 3), (5, 4), (7,8), (8,3)]
alist = [(1, 8), (2, 3), (4, 1), (5, 1), (6, 1),(6,5),(7,3),(9,6), (10,15), (14,7)]
alist = [(7,10),(40,99),(31,28),(15,9),(31,120),(64,315),(42,2),(5,17),(21,7)]
#alist = [(7,10),(40,99),(31,28),(15,13),(31,120),(64,315),(42,2),(5,17),(21,11)]
alist = [(50, 100), (100, 50), (50, 50), (100, 100), (85,75), (75,95), (65,75), (75,55)]
alist = [(50, 100), (100, 50), (50, 50), (100, 100), (85,75), (75,95), (65,75), (75,55),(75,40)]
alist = [(50, 100), (100, 50), (50, 50), (100, 100), (85,75), (75,95), (65,75), (75,55),(75,40),(75,110),(45,75),(110,75)]
#alist = [(83,283),(200,283),(283,200),(283,83),(200,0),(83,0),(0,83),(0,200),(62,175),(97,186),(108,223),(142,205),(175,223),(186,186),(223,175),(205,142),(223,108),(175,62),(142,79),(108,62),(97,97),(62,108),(79,142)]
#alist = [(1, 1), (2, 1), (3, 1), (3, 3)]
print("LOP",alist)
xValues = [i[0] for i in alist]
yValues = [i[1] for i in alist]
xValues.sort()
yValues.sort()
minX = xValues[0]
maxX = xValues[-1]
minY = yValues[0]
maxY = yValues[-1]

uniquepolygons = []
# ps = PolygonStruct(alist)
# ps.setInitialVertex()
# q = ps.setNewSegment((2,1))
# p = ps.lov[-1]
# ps.removeIntersectSegments(p,q)
# q = ps.setNewSegment((3,3))
# p = ps.lov[-1]
# ps.removeIntersectSegments(p,q)

t=0
cycles = 500000
for i in range(cycles):
    #print(".",end='',flush=True)
    c=0
    t+=1

    if t%500==0:
        print("\n############# CYCLE NUMBER and NUMBER OF POLYGONS SO FAR:",t,len(uniquepolygons))
        time.sleep(2)

    ps = poly.PolygonStruct(alist)
    ps.setInitialVertex()
    oldq = (-1,-1)
    while not ps.allPointsUsed():
        ps.cycle()
        if ps.lov[-1] == oldq:
            c+=1
        else:
            c=0
            oldq = ps.lov[-1]
        if c> 50:
            c=0
            #print("\n############# UPS BLOQUEO")

            #print("LOV",ps.lov)
            #time.sleep(2)
            break
    if ps.checkValidFinalPolygon():
        ps.lov.append(ps.lov[0])
        psreverse = ps.lov[:]
        psreverse.reverse()
        if len(ps.lov) == ps.size+1:
            if ps.lov not in uniquepolygons and psreverse not in uniquepolygons:

                uniquepolygons.append(ps.lov)
                print("FINAL VALID POLYGON ",ps.lov)
resfile = open("tests/templatenorange.gnu",'r')
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
        ptext += "%i, %i to %i, %i fillstyle transparent solid 0.8"%(p[-2][0],p[-2][1],p[0][0],p[0][1])

    else:
        ptext += "%i, %i to %i, %i fillstyle transparent solid 0.1"%(p[-2][0],p[-2][1],p[0][0],p[0][1])

    template = template + xrangetext + yrangetext + ptext +"\nplot f(x) with lines ls 1\n"
finaltext = open("tests/finalnew.gnu","w")
finaltext.write(template)
finaltext.close()
system("gnuplot tests/finalnew.gnu && gwenview polygons.png 2>/dev/null")
#print("UNIQUE POLYGONS",uniquepolygons)
print("TOTAL UNIQUE POLYGONS",len(uniquepolygons))
