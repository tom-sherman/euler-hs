# Largest prime factor 

> The prime factors of 13195 are 5, 7, 13 and 29.
>
> What is the largest prime factor of the number 600851475143?

https://projecteuler.net/problem=3

---

I've copied this one from SO as I couldn't figure out an optimal way to do this in Haskell with my n00b skills 😕

## My original solution

Quite terse but it was O(n^n)

```haskell
largestPrimeFactor = head . filter prime . factors

factors n = [x | x <- [n, n - 1 .. 1], mod n x == 0]

prime n = factors n == [n, 1]
```

## Stuff I don't understand from the SO solution

```haskell
largestPrimeFactor :: Integer -> Integer
largestPrimeFactor n
  | n <= 1 = error "largestPrimeFactor n where n <= 1"
  -- What is the tick doing in `largestPrimeFactor'`?
  | otherwise = largestPrimeFactor' n (2 : [3, 5 ..])
  where
    -- What on earth is `fn@(c : cs)`????
    largestPrimeFactor' n pseudoprimeCandidates@(c : cs)
      | c * c >= n = n
      | m == 0 = largestPrimeFactor' d pseudoprimeCandidates
      | otherwise = largestPrimeFactor' n cs
      where
        (d, m) = divMod n c
```
