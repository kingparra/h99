module Two (myButLast) where

myButLast         :: [a] -> a
myButLast      []  =  error "empty list"
myButLast   [a,_]  =  a
myButLast  (_:xs)  =  myButLast xs
