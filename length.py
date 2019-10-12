# define length using map and sum
def map(func, xs): 
    return [] if xs == [] else [func(xs[0])] + map(func, xs[1:])

mapTo1 = lambda x : 1

print(sum(map(mapTo1, [1,2,3,4,5])))

