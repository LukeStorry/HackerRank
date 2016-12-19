-- Given two integers, x and y, a recursive technique to find their GCD

gcd' :: Integral a => a -> a -> a
gcd' x 0 = x
gcd' x y = gcd' y (mod x y)
