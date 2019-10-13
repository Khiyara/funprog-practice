def quicksort(xs):
    return [] if xs == [] else quicksort([x for x in xs if x < xs[0]]) + [xs[0]] + quicksort([x for x in xs if x > xs[0]])

print(quicksort([10,2,5,10,20,30,30,30,40,1,5,6,3,100,5,7,12]))
