module Six (isPalindrome) where

isPalindrome :: Ord a => [a] -> Bool
isPalindrome x = x == reverse x
