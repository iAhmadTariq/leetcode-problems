from typing import List


def isValid(s: str) -> bool:
        stack = []
        for c in s:
            if c == '{' or c == '(' or c == '[':
                stack.append(c)
            elif c == '}' or c == ')' or c == ']':
                if(stack == []):
                    return False
                if c == '}' and stack[len(stack)-1] == '{':
                    stack.pop()
                    continue
                elif c == ')' and stack[len(stack)-1] == '(':
                    stack.pop()
                    continue
                elif c == ']' and stack[len(stack)-1] == '[':
                    stack.pop()
                    continue
                else:
                    return False
        if stack ==[]:
            return True
        else:
            return False
def top(arr: List[int]):
        return arr[len(arr)-1]
    
print(isValid("(["))

    


                