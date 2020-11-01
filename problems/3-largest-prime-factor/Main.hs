-- https://projecteuler.net/problem=1

main :: IO ()
main = putStrLn $ show $ largestPrimeFactor 600851475143

largestPrimeFactor :: Integer -> Integer
largestPrimeFactor n
  | n <= 1 = error "largestPrimeFactor n where n <= 1"
  | otherwise = largestPrimeFactor' n (2 : [3, 5 ..])
  where
    largestPrimeFactor' n pseudoprimeCandidates@(c : cs)
      | c * c >= n = n
      | m == 0 = largestPrimeFactor' d pseudoprimeCandidates
      | otherwise = largestPrimeFactor' n cs
      where
        (d, m) = divMod n c
