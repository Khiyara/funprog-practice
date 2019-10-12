# [x+1 | x <- xs]
def map(func, xs):
    return [] if xs == [] else [func(xs[0])] + map(func, xs[1:])

print(map(lambda x : x+1, [x for x in range(1,10)]))
