module Seven (myFlatten, NestedList(..)) where

data NestedList a = 
  Elem a | List [NestedList a]
  deriving (Eq, Show)

myFlatten :: NestedList a -> [a]
myFlatten (Elem a) = [a] -- Base case, there is only one Elem.
myFlatten (List a) = undefined -- Recursive case.. a is a list, I want to process it further...
