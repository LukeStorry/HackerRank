-- https://www.hackerrank.com/challenges/convex-hull-fp
-- Input:
--  First line of input will contain a integer, N, number of points.
--  Then follow N lines where each line contains the coordinate, xi yi, of ith point.
-- Output: the perimeter of the convex hull 

import Text.Printf

distance :: (Int, Int) -> (Int, Int) -> Double
distance (x1, y1) (x2, y2) = sqrt $ fromIntegral $ (x1-x2)^2 + (y1-y2)^2

main :: IO ()
main = do
  n <- readLn :: IO Int
  points <- getContents
  printf "%.1f\n" $ solve $ map (\[x, y] -> (x, y)) . map (map (read::String->Int)) . map words . lines $ points
