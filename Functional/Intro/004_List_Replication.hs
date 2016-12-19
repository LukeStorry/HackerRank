-- Given a list, repeat each element in the list n amount of times.

f :: Int -> [Int] -> [Int]
f n arr = [num | num <- arr , a <- [1..n]]
