from typing import List


def max_importance(n: int, roads: List[List[int]]):
    node = [[i, 0] for i in range(n)]
    for road in roads:
        node[road[0]][1]+=1
        node[road[1]][1]+=1
    sorted_node = sorted(node, key=lambda x: x[1])
    i=1
    importance = [0] * n
    for node in sorted_node:
        importance[node[0]]=i
        i+=1
    sum = 0
    for road in roads:
        sum+=(importance[road[0]]+importance[road[1]])
    

