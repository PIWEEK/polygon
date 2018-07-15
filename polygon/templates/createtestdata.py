from random import choice, sample, randint
import itertools
import polygon
import numpy
from copy import copy
from os import system

n = 10
vertices = 10
dimx = 100
dimy = 100

def polygongenerator(n=10, vertices=8, dimx=10, dimy=10):
    datadict = {}
    for i in range(n):
        polygon = []
        for j in range(vertices):
            point = (randint(0,dimx),randint(0,dimy))
            while point in polygon:
                point = (randint(0,dimx),randint(0,dimy))
            polygon.append(point)
        polygon.sort()
        if polygon not in datadict.values():
            datadict[i] = polygon
    return datadict

def polygonhasher(polygon):
    pass

def createpolygongenerator(listofpoints = None):
    if listofpoints == None:
        numpoints = 8
        points = polygongenerator(n=1)[0]
        sidesmatrix = {}
        for i,j in itertools.combinations(points,2):
            if i in sidesmatrix:
                sidesmatrix[i].update({j:0})
            else:
                sidesmatrix[i] = {j:0}
    else:
        numpoints=len(listofpoints)
        points = listofpoints

    segmentsmatrix = numpy.ones((numpoints, numpoints))
    sidesmatrix = {}
    #for i in range(numpoints):
    #    segmentsmatrix[i][i] = 0
    connectiondict = {0:[],1:[],2:[]}
    for p in points:
        connectiondict[0].append(p)

    return (numpoints,points,sidesmatrix,segmentsmatrix, connectiondict)


if __name__=="__main__":

    #r = createpolygongenerator(listofpoints = [(0, 8), (3, 4), (3, 7), (6, 2), (9, 0), (9, 1), (9, 5), (9, 6)])
    r = createpolygongenerator(listofpoints = [(0, 8), (3, 4), (3, 7), (6, 2), (9, 0)])
#    print(result,len(result))
#    g=open("data.gp","w")
    # for polygon in result.values():
    #     for pair in polygon:
    #         print(pair)
    #         g.write("\t".join([str(pair[0]),str(pair[1])])+"\n")
    # g.close()
    # n=polygon.PolygonGenerator(r[0],r[1],r[2],r[3],r[4])
    # print(n.points)
    # n.addrandomfreepoint()
    # n.addrandomfreepoint()
    # print("potvertex\n",n.potvertex)
    # n.deletesegments()
    # print("potsegmentsmatrix\n",n.potsegmentsmatrix)
    # print(n.checkisolatedzeroconnected())
    # for p in n.points:
    #     print(",\t".join([str(p[0]),str(p[1])]))

    n=polygon.PolygonGenerator(r[0],r[1],r[2],r[3],r[4])
    print(n.points)
    print(n.numpoints,n.connectiondict)
    n.addrandomfreepoint()
    while True:
        print("connectiondict[0]",n.connectiondict[0])
        print("connectiondict[1]",n.connectiondict[1])
        print("connectiondict[2]",n.connectiondict[2])

        n.addrandomfreepoint()
        print("POT POLY",n.potvertex)
        print("potsegmentsmatrix\n",n.potsegmentsmatrix)
        n.deletesegments()
        print("NEW potsegmentsmatrix\n",n.potsegmentsmatrix)

        if n.checknoleftrightdisconnection():
            print("not pass -1")
            n.potvertex.pop()
            n.potsegmentsmatrix = copy(n.segmentsmatrix)
            n.potconnectiondict = copy(n.connectiondict)
        else:
            if n.checkonlyonezeroconnected():
                print("pass 0")

                n.vertex = copy(n.potvertex)
                n.vertex.append(n.potconnectiondict[0][0])
                n.vertex.append(n.potvertex[0])
                print("FINAL",n.vertex)
                print("ORIGINAL",n.points)
                break
            else:
                if n.checklatestaddedpoint():
                    #print("pass 1")
                    if n.checkinitialpoint():
                        #print("pass 2")
                        if n.checkisolatedzeroconnected():
                            #print("not pass 3")
                            n.potvertex.pop()
                            n.potsegmentsmatrix = copy(n.segmentsmatrix)
                            n.potconnectiondict = copy(n.connectiondict)
                        else:
                            #print("pass 3")
                            n.segmentsmatrix = copy(n.potsegmentsmatrix)
                            n.vertex = copy(n.potvertex)
                            n.connectiondict = copy(n.potconnectiondict)
                            print("We advance!")
                    else:
                        #print("not pass 2")
                        n.potvertex.pop()
                        n.potsegmentsmatrix = copy(n.segmentsmatrix)
                        n.potconnectiondict = copy(n.connectiondict)

                else:
                    #print("not pass 1")
                    n.potvertex.pop()
                    n.potsegmentsmatrix = copy(n.segmentsmatrix)
                    n.potconnectiondict = copy(n.connectiondict)
    resfile = open("data.gnu","w")
    for point in n.vertex:
        resfile.write(" ".join([str(point[0]),str(point[1])]))
        resfile.write("\n")
    resfile.close()
    system("gnuplot export.gnu && eog polygon.png 2>/dev/null")
