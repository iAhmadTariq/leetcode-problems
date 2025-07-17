from typing import List


def goodIndices(nums: List[int], k: int) -> List[int]:
    res = []
    print(len(nums)-k-1)
    if(len(nums)==3):
        return [1]
    for i in range(k,len(nums)-k):
        if isNonIncreasing(k,nums[i-k:i]) and isNonDecreasing(k,nums[i+1:i+k+1]):
            res.append(i)
    return res
    

def isNonIncreasing(k:int,nums:List[int]):
    for i in range(0,k-1):
        if(nums[i]>=nums[i+1]):
            continue
        else:
            return False
    return True

def isNonDecreasing(k:int,nums:List[int]):
    for i in range(0,k-1):
        if(nums[i]<=nums[i+1]):
            continue
        else:
            return False
    return True

goodIndices([878724,201541,179099,98437,35765,327555,475851,598885,849470,943442],4)


