import numpy
import random
from copy import deepcopy
import time

# def doIntersect(p0,p1,p2,p3):
#     p0_x = p0[0]
#     p0_y = p0[1]
#     p1_x = p1[0]
#     p1_y = p1[1]
#     p2_x = p2[0]
#     p2_y = p2[1]
#     p3_x = p3[0]
#     p3_y = p3[1]
#
#     s1_x = p1_x - p0_x
#     s1_y = p1_y - p0_y
#     s2_x = p3_x - p2_x
#     s2_y = p3_y - p2_y
#
#     try:
#         s = (-s1_y * (p0_x - p2_x) + s1_x * (p0_y - p2_y)) / (-s2_x * s1_y + s1_x * s2_y)
#         t = ( s2_x * (p0_y - p2_y) - s2_y * (p0_x - p2_x)) / (-s2_x * s1_y + s1_x * s2_y)
#
#         if (s>= 0 and s <= 1 and t >= 0 and t <= 1):
#         #collision detected
#             i_x = p0_x + (t * s1_x);
#             i_y = p0_y + (t * s1_y)
#             return (True, (i_x,i_y))
#     except:
#         #colinear
#         return (False, (-1,-1))
#
#     return (False, (-1,-1))

def onSegment(p, q, r):
    if (q[0] < max(p[0], r[0]) and q[0] > min(p[0], r[0]) and \
        q[1] < max(p[1], r[1]) and q[1] > min(p[1], r[1])):
        return True
    return False

def orientation(p, q, r):

    val = (q[1] - p[1]) * (r[0] - q[0]) -\
    (q[0] - p[0]) * (r[1] - q[1])

    if val == 0:
        return 0
    if val > 0:
        return 1
    else:
        return 2

def doIntersect(p1, q1, p2, q2):

    if p1==p2 or p1==q2:
        return False
    if q1==p2 or q1==q2:
        return False


    o1 = orientation(p1, q1, p2)
    o2 = orientation(p1, q1, q2)
    o3 = orientation(p2, q2, p1)
    o4 = orientation(p2, q2, q1)

    if (o1 != o2 and o3 != o4):
        #print("I 0")
        return True

    # if (o1 == 0 and onSegment(p1, p2, q1)):
    #     print("I 1")
    #     print("->",p1,p2,q1)
    #     return True
    #
    # if (o2 == 0 and onSegment(p1, q2, q1)):
    #     print("I 2")
    #     print("->",p1,q2,q1)
    #     return True
    #
    # if (o3 == 0 and onSegment(p2, p1, q2)):
    #     print("I 3")
    #     print("->",p2,p1,q2)
    #     return True
    #
    # if (o4 == 0 and onSegment(p2, q1, q2)):
    #     print("I 4")
    #     print("->",p2,q1,q2)
    #     return True
    #

    return False

def whereIntersect(p1, p2, p3, p4):

    ua = ((p4[0] - p3[0])*(p1[1]-p3[1]) - (p4[1]-p3[1])*(p1[0]-p3[0]))/((p4[1]-p3[1])*(p2[0]-p1[0]) - (p4[0]-p3[0])*(p2[1]-p1[1]))
    ub = ((p2[0] - p1[0])*(p1[1]-p3[1]) - (p2[1]-p1[1])*(p1[0]-p3[0]))/((p4[1]-p3[1])*(p2[0]-p1[0]) - (p4[0]-p3[0])*(p2[1]-p1[1]))

    x = p1[0] + ua*(p2[0]-p1[0])
    y = p1[1] + ua*(p2[1]-p1[1])

    return ((x,y),ua,ub)


def isLeft(pointA, pointB, pointC):
    return (pointB[0] - pointA[0])*(pointC[1] - pointA[1]) > (pointB[1] - pointA[1])*(pointC[0] - pointA[0])


class PolygonStruct:

    def __init__(self, listofpoints):

        listofpoints.sort()
        self.lop = listofpoints
        self.size = len(listofpoints)
        self.conn0 = deepcopy(self.lop)
        self.conn1 = []
        self.conn2 = []

        self.vertexlist = []

        self.segments = [[1 for i in range(self.size)] for j in range(self.size)]
        for i in range(self.size):
            self.segments[i][i] = 0

        self.tempconn0 = deepcopy(self.lop)
        self.tempconn1 = []
        self.tempconn2 = []

        self.tempvertexlist = []
        self.tempsegments = [[1 for i in range(self.size)] for j in range(self.size)]
        for i in range(self.size):
            self.tempsegments[i][i] = 0


        self.leftpoints = []
        self.rightpoints = []

    def givepos(self, point):
        return self.lop.index(point)

    def temptostable(self):

        self.conn0 = deepcopy(self.tempconn0)
        self.conn1 = deepcopy(self.tempconn1)
        self.conn2 = deepcopy(self.tempconn2)

        self.vertexlist = deepcopy(self.tempvertexlist)
        self.segments = deepcopy(self.tempsegments)
        print("TTOSTABLE --->", self.tempsegments)


    def reverttostable(self):

        self.tempconn0 = deepcopy(self.conn0)
        self.tempconn1 = deepcopy(self.conn1)
        self.tempconn2 = deepcopy(self.conn2)
        self.tempvertexlist = deepcopy(self.vertexlist)
        self.tempsegments = deepcopy(self.segments)
        print("STABLE --->", self.tempsegments)


    def destroyconn2links(self):
        if len(self.tempvertexlist) > 2:
            previousvertex = self.tempvertexlist[-2]
            pos = self.givepos(previousvertex)
            for i in range(self.size):
                self.tempsegments[i][pos] = 0
                self.tempsegments[pos][i] = 0

    def existstempseg(self, pointA, pointB):
        posA = self.givepos(pointA)
        posB = self.givepos(pointB)
        if self.tempsegments[posA][posB] == 1:
            return True
        else:
            return False

    def checkonlyonevalidzeropointleft(self):
        if len(self.tempconn0) == 1:
            pointC = self.tempconn0[-1]
            pointA = self.tempconn1[0]
            pointB = self.tempconn1[-1]
            if self.existstempseg(pointA, pointC) and self.existstempseg(pointB, pointC):
                return True
            else:
                return False
        return False

    def checklatestaddedpoint(self):
        latestpoint = self.tempconn1[-1]
        for afreepoint in self.tempconn0:
            if self.existstempseg(latestpoint, afreepoint):
                return True
        return False

    def checkfirstaddedpoint(self):
        #print("----->",self.tempsegments)
        firstpoint = self.tempconn1[0]
        for afreepoint in self.tempconn0:
            if self.existstempseg(firstpoint, afreepoint):
                return True
        return False

    def checkallzeroconnpoints(self):
        if len(self.tempconn0) > 1:
            for afreepoint in self.tempconn0:
                res = [0,0]
                for anopenpoint in self.tempconn1:
                    if self.existstempseg(afreepoint, anopenpoint):
                        res[0] += 1
                        if res[0] > 2:
                            break
                for anotherfreepoint in self.tempconn0:
                    if self.existstempseg(afreepoint, anotherfreepoint):
                        print("NOAISLADO",afreepoint,anotherfreepoint)
                        #time.sleep(0.1)
                        res[1] += 1
                if res[1] == 0:
                    print("AISLADO",afreepoint)
                    return False
                    #time.sleep(1)
                #     if res[0] > 1:
                #         return True
                # elif res[1] > 0:
                #     if res[0] > 0:
                #         return True
        else:
            return True

        return True

    def checksides(self):
        #print("iiiii xxx->",self.tempsegments)
        self.leftpoints = []
        self.rightpoints = []
        newpotside = (self.tempvertexlist[-2], self.tempvertexlist[-1])
        for freepoint in self.tempconn0:
            if isLeft(newpotside[0],newpotside[1],freepoint):
                self.leftpoints.append(freepoint)
            else:
                self.rightpoints.append(freepoint)
        if len(self.leftpoints) == 0 or len(self.rightpoints) == 0:
            return True
        for aleftie in self.leftpoints:
            posL = self.givepos(aleftie)
            for arightie in self.rightpoints:
                posR = self.givepos(arightie)
                if self.tempsegments[posL][posR] == 1:
                    return True
        #print("FALSE xxx->",self.tempsegments)
        return False

    def checksidesprevside(self):
        #print("iiiii xxx->",self.tempsegments)
        if len(self.tempvertexlist) > 2:
            self.leftpoints = []
            self.rightpoints = []
            newpotside = (self.tempvertexlist[-3], self.tempvertexlist[-2])
            for freepoint in self.tempconn0:
                if isLeft(newpotside[0],newpotside[1],freepoint):
                    self.leftpoints.append(freepoint)
                else:
                    self.rightpoints.append(freepoint)
            if len(self.leftpoints) == 0 or len(self.rightpoints) == 0:
                return True
            for aleftie in self.leftpoints:
                posL = self.givepos(aleftie)
                for arightie in self.rightpoints:
                    posR = self.givepos(arightie)
                    if self.tempsegments[posL][posR] == 1:
                        return True
            #print("FALSE xxx->",self.tempsegments)
        else:
            return True
        return False


    def checkescaperoute(self):
        latestpos = self.givepos(self.tempvertexlist[-1])
        notvisiblefreepoints = []
        for freepoint in self.tempconn0:
            pos = self.givepos(freepoint)
            if self.tempsegments[latestpos][pos] == 0:
                notvisiblefreepoints.append(freepoint)
        for nvfp in notvisiblefreepoints:
            pos = self.givepos(nvfp)
            if self.tempsegments[0][pos] == 1:
                return True

        return False

    def initializetempdata(self):
        self.tempconn0 = deepcopy(self.conn0)
        self.tempconn1 = deepcopy(self.conn1)
        self.tempconn2 = deepcopy(self.conn2)
        self.tempvertexlist = deepcopy(self.vertexlist)
        self.tempsegments = deepcopy(self.segments)

    def pickinitialvertex(self):
        self.attemptnewvertex(self.lop[0])
        print("INITIAL VERTEX",self.tempvertexlist[0])

    def attemptnewvertex(self, vertex=None):
        #self.initializetempdata()
        if vertex == None:
            print("tempconn0",self.tempconn0)
            if len(self.tempvertexlist) > 2:
                candidates = []
                poslastadded = self.givepos(self.tempvertexlist[-1])
                for i in range(self.size):
                    if self.tempsegments[poslastadded][i] == 1:
                        if self.lop[i] in self.tempconn0:
                            candidates.append(self.lop[i])
                print("candidates->",candidates)
                newvertex = random.choice(candidates)
            else:
                newvertex = random.choice(self.tempconn0)
        else:
            newvertex = vertex
        print("newvertex",newvertex)
        self.tempconn0.remove(newvertex)
        if len(self.tempconn1) > 1:
            self.tempconn2.append(self.tempconn1.pop())
        self.tempconn1.append(newvertex)
        self.tempvertexlist.append(newvertex)

        if len(self.tempvertexlist) > 1:
            self.deletesegments()
            self.destroyconn2links()

    def closepolygon(self):
        self.tempconn2.append(self.tempconn1.pop())
        self.tempconn1.append(self.tempconn0.pop())
        self.tempvertexlist.append(self.tempconn1[-1])

        self.tempconn2.append(self.tempconn1.pop())
        self.temptostable()

    def deletesegments(self):
        newpotside = (self.tempvertexlist[-2], self.tempvertexlist[-1])
        potsegments = []
        for i in range(self.size):
            for j in range(self.size):
                if self.tempsegments[i][j] == 1:
                    if self.lop[i] != newpotside[1] and self.lop[j] != newpotside[1] \
                    and self.lop[j] != newpotside[0] and self.lop[j] != newpotside[0]:
                        potsegments.append((self.lop[i],self.lop[j]))
        for potseg in potsegments:
            res = doIntersect(newpotside[0],newpotside[1],potseg[0],potseg[1])
            if res:
                try:
                    resw = whereIntersect(newpotside[0],newpotside[1],potseg[0],potseg[1])
                    if resw[0] != newpotside[1] and resw[0] != newpotside[0]:
                        posA = self.givepos(potseg[0])
                        posB = self.givepos(potseg[1])
                        self.tempsegments[posA][posB] = 0
                        self.tempsegments[posB][posA] = 0
                        print("deleted seg:",posA,posB)

                except:
                    pass

        # for closedpoint in self.tempconn2:
        #     pos = self.givepos(closedpoint)
        #     for i in range(self.size):
        #         self.tempsegments[pos][i] = 0
        #         self.tempsegments[i][pos] = 0
        #         print("deleted seg (2-conn):",pos,i)
        #

        latestpoint = self.tempconn1[-1]
        pos = self.givepos(latestpoint)
        previouspoint = self.givepos(self.tempconn1[-2])
        self.tempsegments[pos][previouspoint] = 0
        self.tempsegments[previouspoint][pos] = 0
        print("deleted seg:",pos,previouspoint)

        print("Done deleting segments")




    def chainoftheorems(self):
        if len(self.tempvertexlist) < 2:
            self.temptostable()
        else:
            if self.checkonlyonevalidzeropointleft():
                self.closepolygon()

                print("VALID POLYGON",self.vertexlist)
            else:
                if self.checklatestaddedpoint():
                    if self.checkfirstaddedpoint():
                        if self.checkallzeroconnpoints():
                            if self.checksides():
                                if self.checksidesprevside():
                                    self.temptostable()
                                else:
                                    print("FAILED AT PREVCHECKSIDES")
                                    self.reverttostable()
                            else:
                                print("FAILED AT CHECKSIDES")
                                self.reverttostable()
                        else:
                            print("FAILED AT CHECKALLZEROCONNPOINTS")
                            #time.sleep(1)
                            self.reverttostable()
                    else:
                        print("FAILED AT CHECKFIRSTADDEDPOINT")
                        self.reverttostable()
                else:
                    print("FAILED AT CHECKLASTADDEDPOINT")
                    self.reverttostable()
