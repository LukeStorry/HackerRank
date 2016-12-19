-- Filter a given array of integers and output only those values that are less than a specified value X.
-- The purpose of this challenge is to learn how to write your own implementation of a filter function.

f :: Int -> [Int] -> [Int]
f n arr = f n arr = [ x | x <- arr, x < n ]
