foldrr f z [] = z
foldrr f z (x:xs) = x `f` foldr f z xs
sum1 = foldrr (+) 0
veryBigList = [1..10000]
try1 = sum1 veryBigList
