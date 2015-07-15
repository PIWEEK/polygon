import intersect
import numpy
import random
from copy import copy

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

    def deletesegments(self):
        print("DS",self.potvertex)
        newpotside = (self.potvertex[-2], self.potvertex[-1])

        potentialsegs = numpy.where(self.potsegmentsmatrix > 0)
        size = len(potentialsegs[0])
        for i in range(size):

            potseg = (potentialsegs[0][i],potentialsegs[1][i])
            apotside = (self.points[potseg[0]], self.points[potseg[1]])
            if newpotside[0] in apotside or newpotside[1] in apotside:
                continue
            else:
                if intersect.doIntersect(newpotside[0],newpotside[1],apotside[0],apotside[1]):
                    print("intersectan",newpotside,apotside)
                    self.potsegmentsmatrix[self.points.index(apotside[1])][self.points.index(apotside[0])] = 0
                    self.potsegmentsmatrix[self.points.index(apotside[0])][self.points.index(apotside[1])] = 0
                else:
                    print("NO intersectan",newpotside,apotside)
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
        print("openorfree",openorfree)
        for posy in openorfree[0]:
            segisfree = self.points[posy] in self.potconnectiondict[0]
            if segisfree:
                return True
        return False



class Polygon:
    pass
