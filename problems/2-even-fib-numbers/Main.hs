-- https://projecteuler.net/problem=2

main :: IO ()
main = putStrLn $ show $ sum $ filter even $ takeWhile (\n -> n < 4000000) fibs

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
