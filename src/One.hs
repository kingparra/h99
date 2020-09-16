module One (myLast) where

-- Problem 1, reimplement last
myLast :: [a] -> a
myLast     []   = error "empty list"
myLast   [xs]   = xs
myLast  (_:xs)  = myLast xs
