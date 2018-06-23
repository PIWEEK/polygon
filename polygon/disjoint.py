import numpy
import random
import networkx as nx

class AdjacentMatrix:

    def __init__(self, dimension):
        self.dimension = dimension
        self.adjmatrix = self.generateMatrix()

    def generateMatrix(self, diagonal=False):

        matrix = nx.Graph()
        matrix.add_nodes_from(range(self.dimension))
        matrix.add_edges_from([(i,j) for i in range(self.dimension) for j in range(self.dimension) if i!=j])

        return matrix

    def removeSegments(self, numofsegments):
        for i in range(numofsegments):
            n = nx.number_of_edges(self.adjmatrix)
            #print("Number of edges",n)
            pos = random.randint(0,n-1)
            #print(self.adjmatrix.edges())
            segmentToBeRemoved = self.adjmatrix.edges()[pos]
            #print("To be removed",segmentToBeRemoved)
            self.adjmatrix.remove_edges_from([segmentToBeRemoved])

    def removeSegment(self, p, q):
        self.adjmatrix.remove_edge(p,q)

    def getConnectedComponents(self):
        d = list(nx.connected_component_subgraphs(self.adjmatrix))

        return d

    def __repr__(self):
        return str(self.adjmatrix)

if __name__=="__main__":
    m = AdjacentMatrix(60)

    m.removeSegments(1000)
    cc= m.getConnectedComponents()
    print("Número de subgrafos",len(cc))
