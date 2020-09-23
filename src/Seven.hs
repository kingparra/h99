module Seven (myFlatten, NestedList(..)) where

data NestedList a = 
  Elem a | List [NestedList a]
  deriving (Eq, Show)

myFlatten :: NestedList a -> [a]
myFlatten (Elem a) = [a]
myFlatten (List a) = concat . map myFlatten $ a
