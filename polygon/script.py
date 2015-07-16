from polygon import *
alist = [(0, 8), (3, 4), (3, 7), (6, 2), (9, 0), (9,2)]
ps=PolygonStruct(alist)
ps
ps.size
ps.tempsegments
ps.attemptnewvertex()
ps.attemptnewvertex()
ps.chainoftheorems()
ps.attemptnewvertex()
ps.chainoftheorems()
ps.attemptnewvertex()
ps.chainoftheorems()

[(2, 3), (1, 8), (10, 8), (6, 5), (9, 6), (7, 3), (5, 1), (4, 1), (15,15),(11,13)]
[(5, 6), (2, 4), (0, 8)]

[(1, 2), (15, 9), (16, 6), (15, 17)]

from random import choice, sample, randint
import itertools
import polygon
import numpy
from copy import copy
from os import system

def listofpoints():
    alist = [(1, 8), (2, 3), (4, 1), (5, 1), (6, 1), (6,5),(7,3),(9,6)]
    return alist

newlistofpoints = listofpoints()
n = polygon.PolygonStruct(newlistofpoints)
n.attemptnewvertex((1,8))
n.chainoftheorems()
n.attemptnewvertex((7,3))
n.chainoftheorems()
n.attemptnewvertex((5,1))

#n.tempvertexlist
