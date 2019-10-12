def fold(func, xs):
    return 0 if xs == [] else func(xs[0]) + fold(func, xs[1:])
