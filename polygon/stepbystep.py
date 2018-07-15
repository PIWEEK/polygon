import polygon
from math import sqrt
from os import system

alist = [(5,17),(40,99),(31,28),(15,9),(31,120),(64,315),(42,2),(7,10),(21,7)]
alist = [(50, 100), (100, 50), (50, 50), (100, 100), (85,75), (75,95), (65,75), (75,55),(75,40)]
alist = [(50, 100), (100, 50), (50, 50), (100, 100), (85,75),  (65,75), (75,40)]

print("LOP",alist)
uniquepolygons = []
ps = polygon.PolygonStruct(alist)
ps.setInitialVertex()

ps.forcedCycle((100,50))

#print("segments",ps.am.getSegments())

# temp = [(50, 100),(75,95),(75,55),(85,75)]
#
# print("rebuilding with",temp)
# ps.rebuildTemporaryPolygon(temp)
# print("segments",ps.am.getSegments())

uniquepolygons.append(ps.lov)
print("FINAL",ps.lov)
resfile = open("templates/templatenorangesvg.gnu",'r')
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
finaltext = open("templates/final.gnu","w")
finaltext.write(template)
finaltext.close()
#system("gnuplot tests/finalnew.gnu && gwenview polygons.png 2>/dev/null")
print("UNIQUE POLYGONS",uniquepolygons)
