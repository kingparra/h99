module Two (myButLast) where
-- Problem 2
myButLast :: [a] -> a
myButLast l = case l of
    []    -> error "empty list"
    [a,_] -> a
    _     -> l !! (length l - 2)
