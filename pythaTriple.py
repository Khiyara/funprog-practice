def pythaTriple(n):
    return [(x,y,z) for z in range(1,n) for y in range(z,1,-1) for x in range(y,1,-1) if x*x + y*y == z*z]

print(pythaTriple(100))
