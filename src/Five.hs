module Five (myReverse) where
-- myReverse :: [a] -> [a]
-- myReverse [] = []
-- myReverse (x:xs) = myReverse xs ++ [x]

-- myReverse (x:xs) = myReverse xs : x
-- 1 : 2 : 3 : []
--  x        xs
-- (1) : (2 : 3 : [])
--               xs          x
-- myReverse (2 : 3 : []) : (1)
--                     ^ error

myReverse :: [a] -> [a]
myReverse l = foldl (\x y -> y:x) [] l
