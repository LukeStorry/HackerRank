-- Given two strings, P and Q, determine the mingled string R

mingle :: [a] -> [a] -> [a]
mingle [] [] = []
mingle x [] = x
mingle [] y = y
mingle (x:xs) (y:ys) = [x] ++ [y] ++ mingle xs ys

main = do
    p <- getLine
    q <- getLine
    putStrLn $ mingle p q
