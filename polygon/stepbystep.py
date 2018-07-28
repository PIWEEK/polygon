import polygon
from math import sqrt
from os import system

alist = [(5,17),(40,99),(31,28),(15,9),(31,120),(64,315),(42,2),(7,10),(21,7)]
alist = [(50, 100), (100, 50), (50, 50), (100, 100), (85,75), (75,95), (65,75), (75,55),(75,40)]
alist = [(50, 100), (100, 50), (50, 50), (100, 100), (85,75),  (65,75), (75,40)]

alist = [(0, 0), (0, 2), (2, 0), (2, 2), (10, 0), (10, 2), (12, 0), (12, 2)]

print("LOP",alist)
uniquepolygons = []
ps = polygon.PolygonStruct(alist)
ps.setInitialVertex()

ps.forcedCycle((2,0))
print(ps.am.getSegmentsForAVertex(0))

ps.forcedCycle((0,2))

print(ps.firstnodesegments)
print(ps.am.getSegmentsForAVertex(0))

ps.rebuildLOVGraph()
print(ps.am.getSegmentsForAVertex(0))
# uniquepolygons.append(ps.lov)
# print("FINAL",ps.lov)
# resfile = open("templates/templatenorangesvg.gnu",'r')
# template = resfile.read()
# size = len(uniquepolygons)
# dim = int(sqrt(size))
# text = "set multiplot layout %i,%i rowsfirst"%(dim+1,dim+1)
# template = template + text + "\n"


# for p in uniquepolygons:
#     print(p)
#     ptext = "set object 1 polygon from "
#     for i in p[:-1]:
#         ptext += "%i, %i to "%(i[0],i[1])
#     ptext += "%i, %i to %i, %i fillstyle transparent"%(p[-1][0],p[-1][1],p[0][0],p[0][1])
#     template = template + ptext +"\nplot f(x) with lines ls 1\n"
# finaltext = open("templates/final.gnu","w")
# finaltext.write(template)
# finaltext.close()
# #system("gnuplot tests/finalnew.gnu && gwenview polygons.png 2>/dev/null")
# print("UNIQUE POLYGONS",uniquepolygons)
