from typing import List


def find_center(edges: List[List[int]]):
    if(edges[0][0]==edges[1][0] or edges[0][0]==edges[1][1]):
        center = edges[0][0]
    else:
        center = edges[0][1]
    return center

edges = [[1,2],[5,1],[1,3],[1,4]]
print(find_center(edges))
    