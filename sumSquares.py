# sum squares 1 to n map and foldr

def map(func, xs):
    return [] if xs == [] else [func(xs[0])] + map(func, xs[1:])

mapToSquares = lambda x : x*x

def fold(func, xs):
    return 0 if xs == [] else func(xs[0]) + fold(func, xs[1:])

itSelf = lambda x : x

print(fold(itSelf, map(mapToSquares, [x for x in range(5)])))
