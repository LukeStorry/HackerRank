-- For a given list with  integers, return a new list removing the elements at odd positions. 

f :: [Int] -> [Int]
f (_:x:xs) = x : f xs
f _ = []
