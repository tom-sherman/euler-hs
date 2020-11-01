# Largest palindrome product

> A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
>
> Find the largest palindrome made from the product of two 3-digit numbers.

https://projecteuler.net/problem=4

---

I originally implemented the paindrome function like so:

```haskell
palindrome x = show x == reverse (show x)
```

But this is not efficient for very large `x`s and doesn't work on things that can't be converted to a `show`n (converted to a `String`). Instead, we can compare the first and last element of the list, working from the outside in, until we have consumed the whole list.

```haskell
palindrome :: Eq a => [a] -> Bool
palindrome [] = True
palindrome list = head list == last list && palindrome (tail $ init list)
```

As long as the type in the list implements the `Eq` class, then we can tell if the list is a palindrome or not. Coming from TypeScript, being able to constrain the type to this degree blows my mind 🤯, so cool!
