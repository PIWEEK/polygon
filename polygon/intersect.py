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

def pointBelongsToSegment(a, b, c):

    crossproduct = (c[1] - a[1]) * (b[0] - a[0]) - (c[0] - a[0]) * (b[1] - a[1])

    # compare versus epsilon for floating point values, or != 0 if using integers
    if abs(crossproduct) != 0:
        return False

    dotproduct = (c[0] - a[0]) * (b[0] - a[0]) + (c[1] - a[1])*(b[1] - a[1])
    if dotproduct < 0:
        return False

    squaredlengthba = (b[0] - a[0])*(b[0] - a[0]) + (b[1] - a[1])*(b[1] - a[1])
    if dotproduct > squaredlengthba:
        return False

    return True

def doIntersect(p1, q1, p2, q2):

    # Shared points

    if p1==p2 or p1==q2:
        return False
    if q1==p2 or q1==q2:
        return False

#    Points belong to other line
    
    # a = p1[1]-p2[1]
    # b = (q2[1]-p2[1])*(p1[0]-p2[0])/(q2[0]-p2[0])
    
    # c = q1[1]-p2[1]
    # d = (q2[1]-p2[1])*(q1[0]-p2[0])/(q2[0]-p2[0])
    
    # e = p2[1]-p1[1]
    # f = (q1[1]-p1[1])*(p2[0]-p1[0])/(q1[0]-p1[0])
    
    # g = q2[1]-p1[1]
    # h = (q1[1]-p1[1])*(q2[0]-p1[0])/(q1[0]-p1[0])

    
    # if a==b or c==d:
    #     return False
    # if e==f or g==h:
    #     return False

    o1 = orientation(p1, q1, p2)
    o2 = orientation(p1, q1, q2)
    o3 = orientation(p2, q2, p1)
    o4 = orientation(p2, q2, q1)

    if (o1 != o2 and o3 != o4):
        #print("I 0")
        return True

    if (o1 == 0 and onSegment(p1, p2, q1)):
#        print("I 1")
#        print("->",p1,p2,q1)
        return True

    if (o2 == 0 and onSegment(p1, q2, q1)):
#        print("I 2")
#        print("->",p1,q2,q1)
        return True

    if (o3 == 0 and onSegment(p2, p1, q2)):
#        print("I 3")
#        print("->",p2,p1,q2)
        return True

    if (o4 == 0 and onSegment(p2, q1, q2)):
#        print("I 4")
#        print("->",p2,q1,q2)
        return True

    #print("PASS")
    return False

if __name__=="__main__":

    p1 = (1, 1)
    q1 = (11, 1)
    p2 = (1, 2)
    q2 = (10, 1)

    print(doIntersect(p1, q1, p2, q2))

    p1 = (10, 0)
    q1 = (0, 10)
    p2 = (0, 0)
    q2 = (0, 10)

    print(doIntersect(p1, q1, p2, q2))

    p1 = (0, 8)
    q1 = (2, 1)
    p2 = (2, 1)
    q2 = (3, 3)

    print(doIntersect(p1, q1, p2, q2))

    p1 = (0, 8)
    q1 = (2, 1)
    p2 = (2, 1)
    q2 = (0, 8)

    print(doIntersect(p1, q1, p2, q2))


    p1 = (0, 0)
    q1 = (10, 0)
    p2 = (10, 0)
    q2 = (2, 0)

    print(pointBelongsToSegment(p1, p2, q2))
