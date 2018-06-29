import poly
from math import sqrt
from os import system
import time


def perimeter(polygon):

    p = 0
    for i in range(len(polygon)-1):
        a = polygon[i]
        b = polygon[+1]
        p += sqrt(abs(a[0]-b[0])+abs(a[1]-b[1]))
    return p

alist = [(0, 8), (2, 1), (3, 3), (5, 4), (7,8), (8,3)]
alist = [(1, 8), (2, 3), (4, 1), (5, 1), (6, 1),(6,5),(7,3),(9,6), (10,15), (14,7)]
#alist = [(7,10),(40,99),(31,28),(15,9),(31,120),(64,315),(42,2),(5,17),(21,7)]
#alist = [(7,10),(40,99),(31,28),(15,13),(31,120),(64,315),(42,2),(5,17),(21,11)]
#alist = [(50, 100), (100, 50), (50, 50), (100, 100), (85,75), (75,95), (65,75), (75,55)]
alist = [(50, 100), (100, 50), (50, 50), (100, 100), (85,75), (75,95), (65,75), (75,55),(75,40),(75,110),(45,75),(110,75)]
print("LOP",alist)
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
cycles = 30000
for i in range(cycles):
    c=0
    t+=1

    if t%500==0:
        print("CYCLE NUMBER and NUMBER OF POLYGONS SO FAR",t,len(uniquepolygons))
        time.sleep(1)

    ps = poly.PolygonStruct(alist)
    ps.setInitialVertex()
    oldq = (-1,-1)
    while not ps.FinalPolygonExists():
        if c>10:
            break
        q = ps.tryNewSegment()
        if q==oldq:
            c+=1
        if q:
            p = ps.lov[-1]
            ps.removeIntersectSegments(p,q)
            oldq = q
        else:
            print("break")
            break
    if c<10 and ps.checkValidFinalPolygon():
        ps.lov.append(ps.lov[0])
        psreverse = ps.lov[:]
        psreverse.reverse()
        if len(ps.lov) == ps.size+1:
            if ps.lov not in uniquepolygons and psreverse not in uniquepolygons:

                uniquepolygons.append(ps.lov)
resfile = open("tests/templatehighres.gnu",'r')
template = resfile.read()
size = len(uniquepolygons)
dim = int(sqrt(size))
text = "set multiplot layout %i,%i rowsfirst"%(dim+1,dim+1)
template = template + text + "\n"

minperimeter = 100000
pos = 0
posper = 0
for p in uniquepolygons:
    pos+=1
    peri = perimeter(p)
    p.append(peri)
    print("P AND PERIMETER---------------->",p,peri)
    if peri<minperimeter:
        minperimeter=peri
        posper = pos

apos = 0
print("POSPER",posper,minperimeter)
for p in uniquepolygons:
    apos +=1
    ptext = "set object 1 polygon from "
    for i in p[:-2]:
        ptext += "%i, %i to "%(i[0],i[1])

    if p[-1]==minperimeter:
        ptext += "%i, %i to %i, %i fillstyle transparent solid 0.8"%(p[-2][0],p[-2][1],p[0][0],p[0][1])

    else:
        ptext += "%i, %i to %i, %i fillstyle transparent solid 0.1"%(p[-2][0],p[-2][1],p[0][0],p[0][1])

    template = template + ptext +"\nplot f(x) with lines ls 1\n"
finaltext = open("tests/finalnew.gnu","w")
finaltext.write(template)
finaltext.close()
system("gnuplot tests/finalnew.gnu && gwenview polygons.png 2>/dev/null")
print("UNIQUE POLYGONS",uniquepolygons)
print("TOTAL UNIQUE POLYGONS",len(uniquepolygons))
