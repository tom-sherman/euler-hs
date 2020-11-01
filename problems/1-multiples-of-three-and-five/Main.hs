-- https://projecteuler.net/problem=1

main :: IO ()
main = putStrLn $ show $ sum $ getMultiples [3, 5] [1 .. 999]

getMultiples :: [Int] -> [Int] -> [Int]
getMultiples multiples = filter (\x -> any (\y -> x `mod` y == 0) multiples)
