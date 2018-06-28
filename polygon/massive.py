import poly
from math import sqrt
from os import system


alist = [(0, 8), (2, 1), (3, 3), (5, 4), (7,8), (8,3)]
alist = [(1, 8), (2, 3), (4, 1), (5, 1), (6, 1),(6,5),(7,3),(9,6), (10,15), (14,7)]
alist = [(7,10),(40,99),(31,28),(15,9),(31,120),(64,315),(42,2),(5,17),(21,7)]
#alist = [(7,10),(40,99),(31,28),(15,13),(31,120),(64,315),(42,2),(5,17),(21,11)]
#alist = [(5, 10), (10, 5), (5, 5), (10, 10), (8.5,7.5), (7.5,9.5), (6.5,7.5), (7.5,5.5)]
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

for i in range(200):
    c=0

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
system("gnuplot tests/finalnew.gnu && gwenview polygons.png 2>/dev/null")
print("UNIQUE POLYGONS",uniquepolygons)
print("TOTAL UNIQUE POLYGONS",len(uniquepolygons))
