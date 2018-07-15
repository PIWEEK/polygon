from math import exp, sin, cos

class GoldenSpiral:

    def __init__(self):

        self.r = 1
        self.cosb = 0.30635

    def generate(self, steps=10, gap=0.1):

        xstepspolar = [1+gap*i for i in range(steps)]
        ystepspolar = [self.r*exp(self.cosb*x) for x in xstepspolar]
        polarpoints = zip(xstepspolar, ystepspolar)
        xstepsrect = [cos(x) for x in xstepspolar]
        ystepsrect = [sin(y) for y in ystepspolar]
        minx = abs(min(xstepsrect))
        miny = abs(min(ystepsrect))
        xstepsrectabs = [int((x+minx)*100) for x in xstepsrect]
        ystepsrectabs = [int((y+miny)*100) for y in ystepsrect]
        rectpoints = zip(xstepsrectabs, ystepsrectabs)

        return list(rectpoints)


if __name__=="__main__":
    g = GoldenSpiral()
    print(g.generate(steps=20, gap=0.3))
