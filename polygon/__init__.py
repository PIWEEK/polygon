import intersect
import numpy
import random
from copy import copy
import common

class PolygonGenerator:

    def __init__(self, numpoints, points, sidesmatrix, segmentsmatrix, connectiondict):
        self.numpoints = numpoints
        self.points = points
        self.sidesmatrix = sidesmatrix
        self.segmentsmatrix = segmentsmatrix
        self.connectiondict = connectiondict

        self.vertex = []

        self.potsidesmatrix = copy(sidesmatrix)
        self.potsegmentsmatrix = copy(segmentsmatrix)
        self.potconnectiondict = copy(connectiondict)

        self.potvertex = []

        self.leftpoints = []
        self.rightpoints = []


    def __str__(self):
        return "A"

    def addrandomfreepoint(self):
        randomfreepoint = random.choice(self.connectiondict[0])
        self.potvertex.append(randomfreepoint)
        print("ARF",self.potvertex)
        self.potconnectiondict[0].remove(randomfreepoint)
        if len(self.potconnectiondict[1])>1:
            self.potconnectiondict[2].append(self.potconnectiondict[1].pop())
        self.potconnectiondict[1].append(randomfreepoint)



    def addpoint(self, point):
        self.potvertex.append(point)
        self.potconnectiondict[0].remove(point)
        if len(self.potconnectiondict[1])>2:
            self.potconnectiondict[2].append(self.potconnectiondict[1][-1])
        self.potconnectiondict[1].append(point)

    def checknoleftrightdisconnection(self):
        leftrightdisconnection = True
        if self.potvertex[-1] in self.leftpoints:
            self.leftpoints.remove(self.potvertex[-1])
        if self.potvertex[-1] in self.rightpoints:
            self.rightpoints.remove(self.potvertex[-1])
        if self.potvertex[0] in self.leftpoints:
            self.leftpoints.remove(self.potvertex[0])
        if self.potvertex[0] in self.rightpoints:
            self.rightpoints.remove(self.potvertex[0])

        print("pointsL",self.leftpoints)
        print("pointsR",self.rightpoints)
        for pointL in self.leftpoints:
            posL = self.points.index(pointL)
            for pointR in self.rightpoints:
                posR = self.points.index(pointR)
                if self.potsegmentsmatrix[posL][posR] == 1:
                    leftrightdisconnection = False
                    return leftrightdisconnection
        if len(self.rightpoints) == 0 or len(self.leftpoints) == 0:
            leftrightdisconnection = False
        return leftrightdisconnection


    def deletesegments(self):
        #print("DS",self.potvertex)
        newpotside = (self.potvertex[-2], self.potvertex[-1])

        potentialsegs = numpy.where(self.potsegmentsmatrix > 0)
        size = len(potentialsegs[0])
        self.leftpoints = []
        self.rightpoints = []
        for i in range(size):

            potseg = (potentialsegs[0][i],potentialsegs[1][i])
            apotside = (self.points[potseg[0]], self.points[potseg[1]])
            if False:#newpotside[0] in apotside or newpotside[1] in apotside:
                continue
            else:
                if (self.points[potseg[0]] in self.connectiondict[0] or self.points[potseg[0]] in self.connectiondict[1]):
                #print("Analsis",newpotside,apotside)
                #print(self.potvertex[-2], self.potvertex[-1],self.points[potseg[0]])
                    if common.isLeft(self.potvertex[-2], self.potvertex[-1],self.points[potseg[0]]):
                        if self.points[potseg[0]] not in self.leftpoints:
                            self.leftpoints.append(self.points[potseg[0]])
                    else:
                        if self.points[potseg[0]] not in self.rightpoints:
                            self.rightpoints.append(self.points[potseg[0]])
                if (self.points[potseg[1]] in self.connectiondict[0] or self.points[potseg[1]] in self.connectiondict[1]):
                #print("Analsis",newpotside,apotside)
                #print(self.potvertex[-2], self.potvertex[-1],self.points[potseg[0]])
                    if common.isLeft(self.potvertex[-2], self.potvertex[-1],self.points[potseg[1]]):
                        if self.points[potseg[1]] not in self.leftpoints:
                            self.leftpoints.append(self.points[potseg[1]])
                    else:
                        if self.points[potseg[1]] not in self.rightpoints:
                            self.rightpoints.append(self.points[potseg[1]])

                # print("isLeft",)
                # print(self.potvertex[-2], self.potvertex[-1],self.points[potseg[1]])
                # print("isLeft",common.isLeft(self.potvertex[-2], self.potvertex[-1],self.points[potseg[1]]))

                if intersect.doIntersect(newpotside[0],newpotside[1],apotside[0],apotside[1]):
                    #print("intersectan",newpotside,apotside)

                    self.potsegmentsmatrix[self.points.index(apotside[1])][self.points.index(apotside[0])] = 0
                    self.potsegmentsmatrix[self.points.index(apotside[0])][self.points.index(apotside[1])] = 0
                else:
                    pass
                    #print("NO intersectan",newpotside,apotside)
        return True

    def checkisolatedzeroconnected(self):
        freepoints = {}
        for freepoint in self.potconnectiondict[0]:
            freepoints[freepoint] = [0,0]

        isolated = False
        for apoint in self.potconnectiondict[0]:
            for bpoint in self.potconnectiondict[0]:
                if self.potsegmentsmatrix[self.points.index(apoint)][self.points.index(bpoint)] == 1:
                    freepoints[apoint][0]+=1
        for apoint in self.potconnectiondict[0]:
            for bpoint in self.potconnectiondict[1]:
                if self.potsegmentsmatrix[self.points.index(apoint)][self.points.index(bpoint)] == 1:
                    freepoints[apoint][1]+=1
        for key,value in freepoints.items():
            if sum(value) < 2:
                print("ISOLATED!",key)
                isolated = True
                #return isolated
        return isolated


    def checkonlyonezeroconnected(self):
        print("COZC",self.potconnectiondict[0],self.potvertex)
        zerolen = len(self.potconnectiondict[0])
        if zerolen == 1:
            pointApos = self.points.index[self.potconnectiondict[1][0]]
            pointBpos = self.potconnectiondict[1][1]
            pointCpos = self.potconnectiondict[0][0]
            if self.potsegmentsmatrix[self.points]

            return True

        return False

    def checklatestaddedpoint(self):
        latestvertex = self.potvertex[-1]
        return self.checkifzerosegforpoint(latestvertex)

    def checkinitialpoint(self):
        initialvertex = self.potvertex[0]
        return self.checkifzerosegforpoint(initialvertex)

    def checkallzeroconnected(self):
        pass
#        for point in self.potconnectiondict[0]:


    def checkifzerosegforpoint(self, point):
        pos = self.points.index(point)
        print(self.potsegmentsmatrix)
        openorfree = numpy.where(self.potsegmentsmatrix[pos]>0)
        #print("openorfree",openorfree)
        for posy in openorfree[0]:
            segisfree = self.points[posy] in self.potconnectiondict[0]
            if segisfree:
                return True
        return False



class Polygon:
    pass
