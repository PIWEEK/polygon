from random import choice, randint
import itertools
import polygon
import numpy
from copy import copy
from os import system
import time
from math import sqrt

def listofrandompoints(n=8):

    dimx = 20
    dimy = 20
    alist = []
    for j in range(n):
        point = (randint(0,dimx),randint(0,dimy))
        while point in alist:
            point = (randint(0,dimx),randint(0,dimy))
        alist.append(point)
    alist.sort()
    return alist


def listofpoints():


    alist = [(1, 8), (2, 3), (4, 1), (5, 1), (6, 1),(6,5),(7,3),(9,6)]
#    alist = [(0, 8), (2, 1), (3, 3), (5, 4), (7, 8),(8,3)]
#    alist = [(1,2),(7,4),(10,11),(15,9),(15,17),(16,6), (17,2), (18,1), (19,8)]
    return alist

if __name__=="__main__":


    def checksamepolygon(pol1,pol2):
        for i in range(len(pol1)):
            if pol1[i] != pol2[i]:
                return False
        return True
    def checkpolygonexists(pol1, pollist):
        for p in pollist:
            if checksamepolygon(pol1,p):
                return True
        return False

    newlistofpoints = listofpoints()
    #newlistofpoints = listofrandompoints()
    uniquepolygons = []

    for i in range(4):
        polygonstruct = polygon.PolygonStruct(newlistofpoints)
        polygonstruct.pickinitialvertex()

        while len(polygonstruct.vertexlist) < len(polygonstruct.lop):
            polygonstruct.attemptnewvertex()
            print("OP",polygonstruct.lop)
            print("-->",polygonstruct.tempvertexlist)
            polygonstruct.chainoftheorems()
        finalvertex = polygonstruct.vertexlist
        finalvertex.append(polygonstruct.vertexlist[0])
        print("final",finalvertex,i)
        #time.sleep(2)
        if not checkpolygonexists(finalvertex, uniquepolygons):
            uniquepolygons.append(finalvertex)
    print("\nUNIQUEPOLYGONS-------------------->\n\n",uniquepolygons)

    resfile = open("template.gnu",'r')
    template = resfile.read()
    size = len(uniquepolygons)
    dim = int(sqrt(size))
    text = "set multiplot layout %i,%i rowsfirst"%(dim+1,dim+1)
    template = template + text + "\n"

    for p in uniquepolygons:
        ptext = "set object 1 polygon from "
        for i in p[:-1]:
            ptext += "%i, %i to "%(i[0],i[1])
        ptext += "%i, %i"%(p[-1][0],p[-1][1])
        template = template + ptext +"\nplot f(x) with lines ls 1\n"
    finaltext = open("final.gnu","w")
    finaltext.write(template)
    finaltext.close()
    system("gnuplot final.gnu && gwenview polygons.png 2>/dev/null")

#    resfile = open("data.gnu","w")
#    for point in finalvertex:
#        resfile.write(" ".join([str(point[0]),str(point[1])]))
#        resfile.write("\n")
#    resfile.close()
#    system("gnuplot export.gnu && gwenview polygon.png 2>/dev/null")
