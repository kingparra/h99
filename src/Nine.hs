module Nine where
import Data.List (group)

myPack :: Eq a => [a] -> [[a]]
myPack [] = error "empty list"
myPack x = group x