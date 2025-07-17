def pass_pillow(n:int,time:int):
    if time % (2*n) >= n:
        return 1
    return 0

print(pass_pillow(4,7))

