from typing import List

def minDifference(nums: List[int]):
    l = len(nums)
    if l < 4:
        return 0
    else:
        nums.sort()
        
        return min(
            nums[l-1]-nums[3],
            nums[l-2]-nums[2],
            nums[l-3]-nums[1],
            nums[l-4]-nums[0]
        )
        
    
print(minDifference([6,6,0,1,1,4,6]))