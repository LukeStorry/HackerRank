-- https://www.hackerrank.com/challenges/functions-and-fractals-sierpinski-triangles

-- The Sierpinski Triangle is a pretty fractal which consistes of layers of self-similar triangles, nested inside each other.
-- This challenge involves the construction of such triangles, in the form of ASCII Art. 
--  32 rows and 63 columns


sierpinski :: Int -> [String]
sierpinski n = [""]


main :: IO ()
main = do
   n <- readLn :: IO Int
   putStr $ unlines $ sierpinski n
