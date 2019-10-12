-- define um of the squares of the natural numbers 1 to n using map and foldr

mapr f x = f x
mapr f (x:xs) = f x (++) mapr f xs
squares x = [(x*x)]
sumSquares xs = foldr (+) [] (mapr squares xs)
