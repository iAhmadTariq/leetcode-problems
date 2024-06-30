from typing import List


def longest_common_prefix(strs:List[str]):
        first = strs[0]
        flag = False
        for i in range(len(first)):
            substr = first[0:i+1]
            for s in strs:
                if substr == s[0:i+1]:
                    flag = True
                    continue
                else:
                    flag = False
                    break
            if flag == False:
                substr = first[0:i]
                break
        return substr

print(longest_common_prefix(["dog","racecar","car"]))