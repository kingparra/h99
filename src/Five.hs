module Five (myReverse) where

myReverse :: [a] -> [a]
myReverse [] = []
myReverse l  = rev [] l
  where
    rev     :: [a] -> [a] -> [a]
    rev acc []     =        acc
    rev acc [x]    =       x:acc
    rev acc (x:xs) =  rev (x:acc) xs