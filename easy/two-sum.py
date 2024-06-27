from typing import List

def two_sum(arr : List[int], target: int):
    for i in range (0,len(arr)):
        for j in range (i+1,len(arr)):
            if arr[i]+arr[j]==target:
                return [i,j]

print(two_sum([3,2,4],6))