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
totaldistance (a:b:s) = totaldistance (b:s) + distance a b

-- angle between three points
angle :: (Int, Int) -> (Int, Int) -> (Int, Int) -> Double
angle _ _ _ = 0


--add point with max angle to list, then move there and iterate.
hull :: [(Int, Int)] -> [(Int, Int)]
hull points = points

--overall solving function
solve :: [(Int, Int)] -> Double
solve points = totaldistance . hull $ points

-- io
main :: IO ()
main = do
  n <- readLn :: IO Int
  points <- getContents
  printf "%.1f\n" $ solve $ map (\[x, y] -> (x, y)) . map (map (read::String->Int)) . map words . lines $ points
