import numpy
from random import randint, sample, choice
from copy import deepcopy
import time
import disjoint
import intersect



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
        print("currentvertex",currentvertex)
        vpos = self.lop.index(currentvertex)
        segments = self.am.getSegmentsForAVertex(vpos)
        print("segments",segments)
        ch = 0
        while ch==0:
            ch = choice(segments)[1]
            s = self.lop[ch]
            print("choice",ch,s)
        return s

    def setNewSegment(self, point):
        return point



    def removeIntersectSegments(self, p, q):

        print("removing intersecting segments for",p,q)

        oldadjmatrix = deepcopy(self.am.adjmatrix) # copy so we can backtrack

        segments = self.am.getSegments()

        pnode = self.lop.index(p)
        qnode = self.lop.index(q)
        self.am.removeSegment(pnode,qnode)

        # edges_from_q = self.am.getSegmentsForAVertex(qnode)

        if pnode==0:
            print("INICIAMOS con p==0")
            for seg in segments:
                r = self.lop[seg[0]]
                s = self.lop[seg[1]]

                if intersect.doIntersect(p,q,r,s):
                    print("p-q and r-s intersect",p,q,r,s)
                    self.am.removeSegment(seg[0],seg[1])


        if pnode!=0:
            print("CONTINUAMOS con p!=0")

            pnodesegments = self.am.getSegmentsForAVertex(pnode)
            self.am.adjmatrix.remove_edges_from(pnodesegments)
            for seg in segments:
                r = self.lop[seg[0]]
                s = self.lop[seg[1]]

                if intersect.doIntersect(p,q,r,s):
                    print("p-q and r-s intersect",p,q,r,s)
                    self.am.removeSegment(seg[0],seg[1])

        print("number of isolated parts",self.numberofisolatedparts())

        print("lov",self.lov)
        print("surviving edges",self.am.adjmatrix.edges())
        if self.numberofisolatedparts() > len(self.lov):
            #invalid new segment
            self.am.adjmatrix = oldadjmatrix
        else:
            #valid new segment
            print("New vertex valid",q)
            self.lov.append(q)
            print(q)
            self.workingpoints.remove(q)

    def getIsolatedParts(self):
        x = self.am.getConnectedComponents()
        return x


    def numberofisolatedparts(self):
        return self.am.getNumberConnectedComponents()

if __name__ == "__main__":

    alist = [(0, 8), (2, 1), (3, 3), (5, 4), (8,3)]
    print("LOP",alist)
    ps = PolygonStruct(alist)
    ps.setInitialVertex()

    while not ps.FinalPolygonExists():
        q = ps.tryNewSegment()
        p = ps.lov[-1]
        ps.removeIntersectSegments(p,q)
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



    print("FINAL",ps.lov)
# select_random_next_point
# create_segment
# eliminate_intersect_segments in AdjacentMatrix
# if number of subgraphs > 1: undo segment and selection of points
# else: select new point and repeat
# if only point left, connect with the point
# rotate polygon for order consistency
# add polygon to list of valid polygons only if polygon is new
