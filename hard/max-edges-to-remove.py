# Chat Gpted
class UnionFind:
    def __init__(self, size):
        self.parent = list(range(size))
        self.rank = [1] * size

    def find(self, u):
        if u != self.parent[u]:
            self.parent[u] = self.find(self.parent[u])  # Path compression
        return self.parent[u]

    def union(self, u, v):
        root_u = self.find(u)
        root_v = self.find(v)
        if root_u != root_v:
            if self.rank[root_u] > self.rank[root_v]:
                self.parent[root_v] = root_u
            elif self.rank[root_u] < self.rank[root_v]:
                self.parent[root_u] = root_v
            else:
                self.parent[root_v] = root_u
                self.rank[root_u] += 1
            return True
        return False

def maxNumEdgesToRemove(n, edges):
    uf_alice = UnionFind(n + 1)
    uf_bob = UnionFind(n + 1)
    uf_combined = UnionFind(n + 1)

    edges.sort(reverse=True, key=lambda x: x[0])
    used_edges = 0

    for edge in edges:
        t, u, v = edge
        if t == 3:
            if uf_combined.union(u, v):
                uf_alice.union(u, v)
                uf_bob.union(u, v)
                used_edges += 1
        elif t == 1:
            if uf_alice.union(u, v):
                used_edges += 1
        elif t == 2:
            if uf_bob.union(u, v):
                used_edges += 1

    if len({uf_alice.find(i) for i in range(1, n + 1)}) != 1 or len({uf_bob.find(i) for i in range(1, n + 1)}) != 1:
        return -1

    return len(edges) - used_edges

# Example usage:
n = 4
edges = [[3, 1, 2], [3, 2, 3], [1, 1, 3], [1, 2, 4], [1, 1, 2], [2, 3, 4]]
print(maxNumEdgesToRemove(n, edges))  # Output: 2
