module Eight (myCompress) where

myCompress [] = []
myCompress [x,y] = if x == y then [x] else [x,y]
myCompress (x:y:xs) = 
  if x == y
  then x : myCompress xs
  else x : y : myCompress xs
