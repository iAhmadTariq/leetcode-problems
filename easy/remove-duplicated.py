from typing import List


def removeDuplicates(nums: List[int]):
    j = 0
    i = len(nums)
    while (j < i-1):
        if nums[j+1] == nums[j]:
            nums.pop(j)
            i-=1
        else:
            j+=1
    return len(nums)
            

nums = [1,2,3,3,4,4,5,5,5,5,6,6,6,6,7]
expectedNums = [1,2,3,4,5,6,7]

k = removeDuplicates(nums)

assert k == len(expectedNums)
for i in range(k):
    assert nums[i] == expectedNums[i]
    
