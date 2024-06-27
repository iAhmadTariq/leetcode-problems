def first_unique_letter(s: str):
    dict = {}
    i=0
    for c in s:
        if c in dict:
            dict[c][0]+=1
        else:
            dict[c]=[1,i]
        i+=1
    for key in dict:
        if dict[key][0] == 1:
            return dict[key][1]
    return -1

s = "aabb"
print(first_unique_letter(s))
            
            