def map(func, xs):
    return [] if xs == [] else [func(xs[0])] + map(func, xs[1:])

