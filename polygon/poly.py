from random import randint, sample, choice
from copy import deepcopy
import time
import disjoint
import intersect
from math import sqrt
from os import system
from collections import Counter



class PolygonStruct:

    def __init__(self, listofpoints):
        listofpoints.sort()
        self.lop = listofpoints
        #self.workingpoints = listofpoints[:]
        self.size = len(listofpoints)
        self.lov = []

        self.am = disjoint.AdjacentMatrix(self.lop)
        self.oldadjmatrix = deepcopy(self.am.adjmatrix)

    def setInitialVertex(self):
        self.lov.append(self.lop[0])
        #self.workingpoints.pop(0)
        print("Initial vertex",self.lov)

    def FinalPolygonExists(self):
        if len(self.lov) == len(self.lop):
            return True
        return False

    def checkValidFinalPolygon(self):
        lovtest = self.lov[:]
        lovtest.append(self.lov[0])
        p = lovtest[-2]
        q = lovtest[-1]
        #print("...",p,q)

        print("LOV",lovtest)
        print("SIZE",self.size)
        for i in range(self.size):
            r = lovtest[i]
            s = lovtest[i+1]
            if intersect.doIntersect(p,q,r,s):
                return False

        return True

    def tryNewSegment(self):
        if len(self.lov) == 1:
            currentvertex = self.lov[-1]
            print("current vertex",currentvertex)
            vpos = self.lop.index(currentvertex)
            segments = self.am.getSegmentsForAVertex(vpos)
            print("available segments",segments)
            ch = choice(segments)[1]
            s = self.lop[ch]
            #print("choice",ch,s)
            print("new vertex to try",s)
            return s
        currentvertex = self.lov[-1]
        previousvertex = self.lov[-2]
        print("current vertex",currentvertex)
        vpos = self.lop.index(currentvertex)
        vprev = self.lop.index(previousvertex)
        self.am.removeSegment(vpos,vprev) #to avoid going back
        segments = self.am.getSegmentsForAVertex(vpos)
        print("available segments",segments)
        ch = choice(segments)[1]
        s = self.lop[ch]
        #print("choice",ch,s)
        print("new vertex to try",s)
        return s

    def setNewSegment(self, point):
        print("new vertex to try",point)
        vpos = self.lop.index(point)
        vprev = self.lop.index(self.lov[-1])
        self.am.removeSegment(vpos,vprev) #to avoid going back


        return point

    def rebuildLOVGraph(self):
        for i in range(len(self.lov)-1):
             v = self.lov[i]
             vplus = self.lov[i+1]
             inode = self.lop.index(v)
             inodeplus = self.lop.index(vplus)
             self.am.adjmatrix.add_edge(inode,inodeplus)

    def removenodesegments(self, q):

        qnode = self.lop.index(q)
        qnodesegments = self.am.getSegmentsForAVertex(qnode)
        self.am.adjmatrix.remove_edges_from(qnodesegments)
        return qnodesegments

    def addnodesegments(self, segments):

        self.am.adjmatrix.add_edges_from(segments)


    def checkoneneighbornodes(self):

        print("ULTIMO NODO SUMADO",self.lov[-1])
        if self.am.getNumberConnectedComponents()>1:
            graph = self.getIsolatedParts()[1]
            edges = graph.edges
            nodesA = [i[0] for i in edges]
            nodesB = [i[1] for i in edges]
            j=Counter(nodesA+nodesB)
            print("NODOS UNIDOS",j)
        else:
            print("solo un grafo")
            return True



        total = 0

        for k,v in j.items():
            if v==1: total+=1
        if total > 1:
            print("ONENEIGHBORNODE FOUND!")
            self.am.adjmatrix = self.oldadjmatrix
            self.lov.pop()
            return False
        return True


    def checkisolatedgraphs(self, maxnumber):

        if self.numberofisolatedparts() > maxnumber: #something's wrong here
            self.am.adjmatrix = self.oldadjmatrix
            self.lov.pop()
            return False
        return True

    def selfintersect(self):
        lovsize = range(len(self.lov)-1)
        for i in lovsize:
            p = self.lov[i]
            q = self.lov[i+1]
            for j in lovsize:
                r = self.lov[j]
                s = self.lov[j+1]
                if intersect.doIntersect(p,q,r,s):
                    self.am.adjmatrix = self.oldadjmatrix
                    self.lov.pop()
                    print("SELFINTERSECT")
                    time.sleep(1)
                    return False
        return True

    def removeIntersectSegments(self, p, q):

        #print("removing intersecting segments for",p,q)

        self.oldadjmatrix = deepcopy(self.am.adjmatrix) # copy so we can backtrack

        self.lov.append(q)
        self.removenodesegments(p)
        qnodesegments = self.removenodesegments(q)
        self.rebuildLOVGraph()

        if self.checkisolatedgraphs(2):
#         if self.checkoneneighbornodes():
            print("removing segments")
            segments = self.am.getSegments()
            segmentstoberemoved = []
            for seg in segments:
                #print("seg",seg)
                r = self.lop[seg[0]]
                s = self.lop[seg[1]]

                if intersect.doIntersect(p,q,r,s):
                    print("p-q and r-s intersect",p,q,r,s)
                    segmentstoberemoved.append(seg)
            self.am.adjmatrix.remove_edges_from(segmentstoberemoved)



        print("IP",self.numberofisolatedparts())
        print("subgraphs")
        self.am.getConnectedComponents()
#        if self.checkoneneighbornodes():
        self.checkisolatedgraphs(2)
        #self.selfintersect()
        print("CURRENTLOV",self.lov)
        self.addnodesegments(qnodesegments)
        print("IP",self.numberofisolatedparts())
        print("subgraphs")
        self.am.getConnectedComponents()

    def getIsolatedParts(self):
        x = self.am.getConnectedComponents()
        return x


    def numberofisolatedparts(self):
        return self.am.getNumberConnectedComponents()
