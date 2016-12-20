-- https://www.hackerrank.com/challenges/convex-hull-fp
-- Input:
--  First line of input will contain a integer, N, number of points.
--  Then follow N lines where each line contains the coordinate, xi yi, of ith point.
-- Output: the perimeter of the convex hull 

import Text.Printf


-- distance between two points
distance :: (Int, Int) -> (Int, Int) -> Double
distance (x1, y1) (x2, y2) = sqrt $ fromIntegral $ (x1-x2)^2 + (y1-y2)^2


-- folds list of points using distance
totaldistance :: [(Int, Int)] -> Double
totaldistance [] = 0
totaldistance [a] = 0
totaldistance (a:b:s) = totaldistance (b:s) + distance a b


-- angle between three points using cosine law
angle :: (Int, Int) -> (Int, Int) -> (Int, Int) -> Double
angle a b c = acos((ab^2 + ac^2 - bc^2) / (2 * ab * ac))
    where
        ab = distance a b
        ac = distance a c
        bc = distance b c


-- chooses best next point
nextpoint :: (Int, Int) -> (Int, Int) -> [(Int, Int)] -> (Int, Int)
nextpoint a b [c] = c
nextpoint a b (c:list) 
    | (angle a b c) > (angle a b d) = c
    | otherwise                     = d
    where 
        d = nextpoint a b list
        
        
--add point with max angle to list, then move there and iterate.
hull :: [(Int, Int)] -> [(Int, Int)]
hull points = points


-- main solve function
solve :: [(Int, Int)] -> Double
solve points = totaldistance . hull $ points

-- io
main :: IO ()
main = do
  n <- readLn :: IO Int
  points <- getContents
  printf "%.1f\n" $ solve $ map (\[x, y] -> (x, y)) . map (map (read::String->Int)) . map words . lines $ points
