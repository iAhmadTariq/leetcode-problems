from typing import List


def intersect(nums1: List[int], nums2: List[int]):
    output = []
    for i in nums1:
        if i in nums2:
            output.append(i)
            nums2.remove(i)
    return output

print(intersect(nums1 = [4,9,5], nums2 = [9,4,9,8,4]))
            