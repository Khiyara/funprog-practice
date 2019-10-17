foldrr f z [] = z
foldrr f z (x:xs) = x `f` foldr f z xs
sum1 = foldrr (+) 0
veryBigList = [1..10000]
try1 = sum1 veryBigList


findMax::Int -> Int -> Int -> Int
compared x y = if x > y then x else y
findMax x y z = compared ( compared x y ) z

quicksort [] = []
quicksort (x:xs) = quicksort [c | c <- xs, c <= x] ++ [x] ++ quicksort [c | c <- xs, c > x]

sieves (x:xs) = x : sieves [ c | c <- xs, c `mod` x /= 0 ]
