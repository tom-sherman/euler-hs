-- https://projecteuler.net/problem=4

main :: IO ()
main = putStrLn $ show $ solution
  where
    solution = maximum [x * y | x <- [999, 998 .. 100], y <- [999, 998 .. x], palindrome $ show (x * y)]

palindrome :: Eq a => [a] -> Bool
palindrome [] = True
palindrome list = head list == last list && palindrome (tail $ init list)
