import poly
from math import sqrt
from os import system

alist = [(5,17),(40,99),(31,28),(15,9),(31,120),(64,315),(42,2),(7,10),(21,7)]
print("LOP",alist)
uniquepolygons = []
ps = poly.PolygonStruct(alist)
ps.setInitialVertex()
q = ps.setNewSegment((40,99))
ps.checkoneneighbornodes()
p = ps.lov[-1]
ps.removeIntersectSegments(p,q)
q = ps.setNewSegment((21,7))
ps.checkoneneighbornodes()
p = ps.lov[-1]
ps.removeIntersectSegments(p,q)
q = ps.setNewSegment((15,9))
ps.checkoneneighbornodes()
p = ps.lov[-1]
ps.removeIntersectSegments(p,q)
q = ps.setNewSegment((7,10))
ps.checkoneneighbornodes()
p = ps.lov[-1]
ps.removeIntersectSegments(p,q)
q = ps.setNewSegment((42,2))
ps.checkoneneighbornodes()
p = ps.lov[-1]
ps.removeIntersectSegments(p,q)
ps.removeIntersectSegments(p,q)
q = ps.setNewSegment((42,2))
ps.checkoneneighbornodes()


uniquepolygons.append(ps.lov)
print("FINAL",ps.lov)
resfile = open("tests/templatebig.gnu",'r')
template = resfile.read()
size = len(uniquepolygons)
dim = int(sqrt(size))
text = "set multiplot layout %i,%i rowsfirst"%(dim+1,dim+1)
template = template + text + "\n"


for p in uniquepolygons:
    print(p)
    ptext = "set object 1 polygon from "
    for i in p[:-1]:
        ptext += "%i, %i to "%(i[0],i[1])
    ptext += "%i, %i to %i, %i fillstyle transparent"%(p[-1][0],p[-1][1],p[0][0],p[0][1])
    template = template + ptext +"\nplot f(x) with lines ls 1\n"
finaltext = open("tests/finalnew.gnu","w")
finaltext.write(template)
finaltext.close()
#system("gnuplot tests/finalnew.gnu && gwenview polygons.png 2>/dev/null")
print("UNIQUE POLYGONS",uniquepolygons)
