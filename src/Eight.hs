module Eight (myCompress) where

myCompress :: Eq a => [a] -> [a]
myCompress [] = []
myCompress [x] = [x]
myCompress (x:y:ys) =
  if   x == y
  then     myCompress (y:ys)
  else x : myCompress (y:ys)
