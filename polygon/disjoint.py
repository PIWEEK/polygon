import random
import networkx as nx

class AdjacentMatrix:

    def __init__(self, list_of_points):
        self.dimension = len(list_of_points)
        self.list_of_points = list_of_points
        self.adjmatrix = self.generateMatrix()


    def getSegments(self):
        return nx.edges(self.adjmatrix)

    def getSegmentsForAVertex(self,v):
        return list(self.adjmatrix.edges(v))

    def generateMatrix(self, diagonal=False):

        matrix = nx.Graph()
        matrix.add_nodes_from(range(self.dimension))
        matrix.add_edges_from([(i,j) for i in range(self.dimension) for j in range(self.dimension) if i!=j])

        return matrix

    def addSegment(self, p, q):
        self.adjmatrix.add_edge(p,q)

    def removeSegments(self, numofsegments):
        for i in range(numofsegments):
            n = nx.number_of_edges(self.adjmatrix)
            #print("Number of edges",n)
            pos = random.randint(0,n-1)
            #print(self.adjmatrix.edges())
            segmentToBeRemoved = list(self.adjmatrix.edges)[pos]
            #print("To be removed",segmentToBeRemoved)
            self.adjmatrix.remove_edges_from([segmentToBeRemoved])

    def removeSegment(self, p, q):
        try:
            self.adjmatrix.remove_edge(p,q)
        except:
            pass
            #print("edge already removed")

    def getConnectedComponents(self):
        d = list(nx.connected_component_subgraphs(self.adjmatrix))
        return d

    def getNumberConnectedComponents(self):
        d = list(nx.connected_component_subgraphs(self.adjmatrix))

        return len(d)

    def __repr__(self):
        return str(self.adjmatrix)

if __name__=="__main__":
    m = AdjacentMatrix(range(60))

    m.removeSegments(1700)
    m.addSegment(0,3)
    cc= m.getConnectedComponents()
    print("Numero de subgrafos",len(cc),cc)
    print("edges de 0",m.getSegmentsForAVertex(0))
