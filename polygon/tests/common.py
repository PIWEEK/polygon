def isLeft(pointA, pointB, pointC):
    return (pointB[0] - pointA[0])*(pointC[1] - pointA[1]) > (pointB[1] - pointA[1])*(pointC[0] - pointA[0])

def isLeftxy(pointA, pointB, pointC):
    return (pointB.x - pointA.x)*(pointC.y - pointA.y) > (pointB.y - pointA.y)*(pointC.x - pointA.x)

class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y


if __name__=="__main__":
    pointA = Point(0,0)
    pointB = Point(10,10)
    pointC = Point(5,4)
    print(isLeftxy(pointA, pointB, pointC))
