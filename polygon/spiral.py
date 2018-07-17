from math import exp, sin, cos

class Spiral:

    def __init__(self, xzero, yzero):

        self.xzero = xzero
        self.yzero = yzero


    def generate(self, xdelta=1, ydelta=1, size=10, steps=10):

        pointA = (self.xzero,self.yzero)
        pointB = (self.xzero+size, self.yzero)
        pointC = (self.xzero, self.yzero+size)
        pointD = (self.xzero+size, self.yzero+size)

        rectpoints = []

        for i in range(1,steps):
            if i%2==0:
                pointAderivatives = [(pointA[0],pointA[1]+ydelta*i),\
                (pointA[0]-xdelta*i,pointA[1]),(pointA[0],pointA[1]-ydelta*i),\
                (pointA[0]+xdelta*i,pointA[1])]
                pointBderivatives = [(pointB[0],pointB[1]+ydelta*i),\
                (pointB[0]-xdelta*i,pointB[1]),(pointB[0],pointB[1]-ydelta*i),\
                (pointB[0]+xdelta*i,pointB[1])]
                pointCderivatives = [(pointC[0],pointC[1]+ydelta*i),\
                (pointC[0]-xdelta*i,pointC[1]),(pointC[0],pointC[1]-ydelta*i),\
                (pointC[0]+xdelta*i,pointC[1])]
                pointDderivatives = [(pointD[0],pointD[1]+ydelta*i),\
                (pointD[0]-xdelta*i,pointD[1]),(pointD[0],pointD[1]-ydelta*i),\
                (pointD[0]+xdelta*i,pointD[1])]

            else:
                pointAderivatives = [(pointA[0]+xdelta*i,pointA[1]+ydelta*i),\
                (pointA[0]-xdelta*i,pointA[1]+ydelta*i),(pointA[0]-xdelta*i,pointA[1]-ydelta*i),\
                (pointA[0]+xdelta*i,pointA[1]-ydelta*i)]
                pointBderivatives = [(pointB[0]+xdelta*i,pointB[1]+ydelta*i),\
                (pointB[0]-xdelta*i,pointB[1]+ydelta*i),(pointB[0]-xdelta*i,pointB[1]-ydelta*i),\
                (pointB[0]+xdelta*i,pointB[1]-ydelta*i)]
                pointCderivatives = [(pointC[0]+xdelta*i,pointC[1]+ydelta*i),\
                (pointC[0]-xdelta*i,pointC[1]+ydelta*i),(pointC[0]-xdelta*i,pointC[1]-ydelta*i),\
                (pointC[0]+xdelta*i,pointC[1]-ydelta*i)]
                pointDderivatives = [(pointD[0]+xdelta*i,pointD[1]+ydelta*i),\
                (pointD[0]-xdelta*i,pointD[1]+ydelta*i),(pointD[0]-xdelta*i,pointD[1]-ydelta*i),\
                (pointD[0]+xdelta*i,pointD[1]-ydelta*i)]
        

            rectpoints += pointAderivatives
            rectpoints += pointBderivatives
            rectpoints += pointCderivatives
            rectpoints += pointDderivatives

        return rectpoints[:steps]

# 1,1 -1,1 -1,-1 1,-1
# 0,2 -2,0 0,-2 2,0
# 3,3 -3,3 -3,-3 3,-3


        return rectpoints


if __name__=="__main__":
    g = Spiral(xzero=10,yzero=10)
    print(g.generate(steps=35))
