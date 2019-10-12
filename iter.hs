iter 0 f x = x
iter n f x = x `f` iter (n-1) f x

sumOfTwoButSixTimes = iter 5 (+) 2

