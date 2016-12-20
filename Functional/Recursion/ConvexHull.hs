-- https://www.hackerrank.com/challenges/convex-hull-fp
-- Input:
--  First line of input will contain a integer, N, number of points.
--  Then follow N lines where each line contains the coordinate, xi yi, of ith point.
-- Output: the perimeter of the convex hull 

import Text.Printf

type Point = (Int, Int)


-- distance between two points
distance :: Point -> Point -> Double
distance (x1, y1) (x2, y2) = sqrt $ fromIntegral $ (x1-x2)^2 + (y1-y2)^2


-- folds list of points using distance
totaldistance :: [Point] -> Double
totaldistance [] = 0
totaldistance [a] = 0
totaldistance (a:b:s) = totaldistance (b:s) + distance a b


-- angle between three points using cosine law
angle :: Point -> Point -> Point -> Double
angle a b c = acos((ab^2 + ac^2 - bc^2) / (2 * ab * ac))
    where
        ab = distance a b
        ac = distance a c
        bc = distance b c


-- chooses best next point
nextpoint :: Point -> Point -> [Point] -> Point
nextpoint a b [c] = c
nextpoint a b (c:list) 
    | (angle a b c) > (angle a b d) = c
    | otherwise                     = d
    where 
        d = nextpoint a b list


-- finds the leftmost point
-- TODO: attempt with maps?
firstpoint :: [Point] -> Point
firstpoint [a] = a
firstpoint ((x1,y1):xs)
    | x1 < x2   = (x1,y1)
    | otherwise = (x2,y2)
    where 
        (x2,y2) = firstpoint xs


-- finds the second point
secondpoint :: [Point] -> Point
secondpoint points = nextpoint (x,y) (x,y+1) points
    where
        (x,y) = firstpoint points


-- add point with max angle to list, then move there and iterate.
hull :: [Point] -> [Point]
hull points = points --TODO


-- main solve function
solve :: [Point] -> Double
solve points = totaldistance . hull $ points


-- io
main :: IO ()
main = do
  n <- readLn :: IO Int
  points <- getContents
  printf "%.1f\n" $ solve $ map (\[x, y] -> (x, y)) . map (map (read::String->Int)) . map words . lines $ points
