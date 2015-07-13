from random import choice, sample, randint

n = 10
vertices = 10
dimx = 100
dimy = 100

def polygongenerator(n=10, vertices=8, dimx=10, dimy=10):
    datadict = {}
    for i in range(n):
        polygon = []
        for j in range(vertices):
            point = (randint(0,dimx),randint(0,dimy))
            while point in polygon:
                point = (randint(0,dimx),randint(0,dimy))
            polygon.append(point)
        polygon.sort()
        if polygon not in datadict.values():
            datadict[i] = polygon
    return datadict

def polygonhasher(polygon):
    pass


if __name__=="__main__":

    result = polygongenerator(n=1)
    print(result,len(result))
    g=open("data.gp","w")
    for polygon in result.values():
        for pair in polygon:
            print(pair)
            g.write("\t".join([str(pair[0]),str(pair[1])])+"\n")
    g.close()
