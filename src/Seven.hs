module Seven where

data NestedList x = Elem x | List [NestedList x] deriving (Eq, Show)

myFlatten :: NestedList x -> [x]
myFlatten (Elem a) = [a]
myFlatten (List a) = concat . map myFlatten $ a

myFlatten' :: NestedList x -> [x]
myFlatten' (Elem a) = [a]
myFlatten' (List a) = foldr ((++) . myFlatten') [] a

-- I ended up cheating on this one :(
myFlatten'' :: NestedList w -> [w]
myFlatten'' (Elem a) = [a]
myFlatten'' (List []) = []
myFlatten'' (List (x:xs)) = myFlatten'' x ++ myFlatten'' (List xs)
