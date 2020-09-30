module Three (elementAt) where

elementAt    []    pos  =  error "empty list"
elementAt     l     0   =  error "position must be 1 or greater"
elementAt  (x:_)    1   =  x
elementAt  (x:xs)  pos  =  elementAt xs (pos-1) 
  -- What happens if pos is greater than the length of the list?
  -- What happens if pos is negative?
