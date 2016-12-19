-- Count the number of elements in an array without built-in stuff

len :: [a] -> Int
len [] = 0
len (_:xs) = 1 + len xs
