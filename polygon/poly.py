import numpy
from random import randint, sample, choice
from copy import deepcopy
import time
import disjoint
import intersect
from math import sqrt
from os import system



class PolygonStruct:

    def __init__(self, listofpoints):
        listofpoints.sort()
        self.lop = listofpoints
        self.workingpoints = listofpoints[:]
        self.size = len(listofpoints)
        self.lov = []

        self.am = disjoint.AdjacentMatrix(self.lop)

    def setInitialVertex(self):
        self.lov.append(self.lop[0])
        self.workingpoints.pop(0)
        print("Initial vertex",self.lov)

    def FinalPolygonExists(self):
        if len(self.lov) == len(self.lop):
            return True
        return False

    def tryNewSegment(self):
        currentvertex = self.lov[-1]
        #print("currentvertex",currentvertex)
        vpos = self.lop.index(currentvertex)
        segments = self.am.getSegmentsForAVertex(vpos)
        #print("segments",segments)
        ch = 0
        f = 0
        while ch==0:
            f+=1
            ch = choice(segments)[1]
            s = self.lop[ch]
            if f>10: return None
            #print("choice",ch,s)
        return s

    def setNewSegment(self, point):
        return point



    def removeIntersectSegments(self, p, q):

        #print("removing intersecting segments for",p,q)

        oldadjmatrix = deepcopy(self.am.adjmatrix) # copy so we can backtrack

        segments = self.am.getSegments()

        pnode = self.lop.index(p)
        qnode = self.lop.index(q)
        self.am.removeSegment(pnode,qnode)

        # edges_from_q = self.am.getSegmentsForAVertex(qnode)

        if pnode==0 and len(self.lov)>2:
            #print("INICIAMOS con p==0")
            pnodesegments = self.am.getSegmentsForAVertex(pnode)
            self.am.adjmatrix.remove_edges_from(pnodesegments)
            for seg in segments:
                r = self.lop[seg[0]]
                s = self.lop[seg[1]]

                if intersect.doIntersect(p,q,r,s):
                    #print("p-q and r-s intersect",p,q,r,s)
                    self.am.removeSegment(seg[0],seg[1])


        if pnode!=0:
            #print("CONTINUAMOS con p!=0")

            pnodesegments = self.am.getSegmentsForAVertex(pnode)
            self.am.adjmatrix.remove_edges_from(pnodesegments)
            for seg in segments:
                r = self.lop[seg[0]]
                s = self.lop[seg[1]]

                if intersect.doIntersect(p,q,r,s):
                    #print("p-q and r-s intersect",p,q,r,s)
                    self.am.removeSegment(seg[0],seg[1])

        #print("number of isolated parts",self.numberofisolatedparts())

        #print("lov",self.lov)
        #print("surviving edges",self.am.adjmatrix.edges())
        if self.numberofisolatedparts() > len(self.lov): #something's wrong here
            #invalid new segment
            self.am.adjmatrix = oldadjmatrix
        else:
            #valid new segment
            #print("New vertex valid",q)
            self.lov.append(q)
            #print(q)
            self.workingpoints.remove(q)

    def getIsolatedParts(self):
        x = self.am.getConnectedComponents()
        return x


    def numberofisolatedparts(self):
        return self.am.getNumberConnectedComponents()

if __name__ == "__main__":

  depth = 10
  alist = [(0, 8), (2, 1), (3, 3), (5, 4), (7, 8), (8,3)]
  print("LOP",alist)
  uniquepolygons = []
  for i in range(20):
    ps = PolygonStruct(alist)
    ps.setInitialVertex()

    while not ps.FinalPolygonExists():
        q = ps.tryNewSegment()
        if q:
            p = ps.lov[-1]
            ps.removeIntersectSegments(p,q)
        else:
            break
    # q = ps.setNewSegment((2,1))
    # p = ps.lov[-1]
    # ps.removeIntersectSegments(p,q)
    # q = ps.setNewSegment((8,3))
    # p = ps.lov[-1]
    # ps.removeIntersectSegments(p,q)
    # q = ps.setNewSegment((5,4))
    # p = ps.lov[-1]
    # ps.removeIntersectSegments(p,q)
    # q = ps.setNewSegment((3,3))
    # p = ps.lov[-1]
    # ps.removeIntersectSegments(p,q)
    ps.lov.append(ps.lov[0])
    psreverse = ps.lov[:]
    psreverse.reverse()
    if len(ps.lov) == ps.size+1:
        if ps.lov not in uniquepolygons and psreverse not in uniquepolygons:
          print("PS.LOV",ps.lov)
          print("PSREVERSE",psreverse)
          print("UNIQUE",uniquepolygons)

          uniquepolygons.append(ps.lov)
          print("FINAL",ps.lov)
          resfile = open("tests/template.gnu",'r')
          template = resfile.read()
          size = len(uniquepolygons)
          dim = int(sqrt(size))
          text = "set multiplot layout %i,%i rowsfirst"%(dim+1,dim+1)
          template = template + text + "\n"

  print("UNIQUE")
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
# select_random_next_point
# create_segment
# eliminate_intersect_segments in AdjacentMatrix
# if number of subgraphs > 1: undo segment and selection of points
# else: select new point and repeat
# if only point left, connect with the point
# rotate polygon for order consistency
# add polygon to list of valid polygons only if polygon is new
