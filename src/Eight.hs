module Eight (myCompress) where

myCompress :: Eq a => [a] -> [a]
myCompress [] = []
myCompress [x] = [x]
myCompress (x:y:ys)
  | x == y    = myCompress (y:ys)
  | otherwise = x : myCompress (y:ys)
