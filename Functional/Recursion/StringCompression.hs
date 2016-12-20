-- https://www.hackerrank.com/challenges/string-compression
-- basic string compression algorithm

main = interact compress

compress::String->String
compress  []          = []
compress  [a]         = [a]
compress  (char1:char2:rest)
    | char1 == char2  = let n=(countConsecutive char1 rest)+2
                            in char1:(show n)++(compress (drop (n-2) rest))
    | otherwise       = char1:(compress (char2:rest))

countConsecutive::(Eq a)=> a->[a]->Int
countConsecutive  _ []       = 0
countConsecutive  a (b:rest)
    | a == b    = 1 + countConsecutive a rest
    | otherwise = 0
