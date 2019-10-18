-- [ x+1 | x <- xs ]

soal1 xs = map (+1) xs

-- 2. [ x+y | x <- xs, y <-ys ]

soal2 xs ys = concat (map (\x -> map (\y -> (x+y)) ys) xs)

-- 3. [ x+2 | x <- xs, x > 3 ]

soal3 xs = filter (>3) (map (+2) xs)

-- 4. [ x+3 | (x,_) <- xys ]

soal4 xys = map (\(x,_) -> x+3) xys

-- 5. [ x+4 | (x,y) <- xys, x+y < 5 ]

soal5 xyz = map ((+4) . fst) (filter (\(x,y) -> x+y < 5) xys)

-- 6. [ x+5 | Just x <- mxs ]

soal6 mxs = map (\(Just x) -> x+5) (filter isJust mxs)
