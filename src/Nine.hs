module Nine where
{- myPack is a reimplementation of Data.List.group
·∾ :doc group
 The 'group' function takes a list and returns a list of lists such that the
 concatenation of the result is equal to the argument. Moreover, each sublist
 in the result contains only equal elements. For example,

 >>> group "Mississippi"
 ["M","i","ss","i","ss","i","pp","i"]

 It is a special case of 'groupBy', which allows the programmer to supply their
 own equality test.

·∾ :type group
group :: Eq a => [a] -> [[a]]

·∾ group []
[]            <--- ಠ_ಠ wtf?
·∾ group [[]]
[[[]]]
·∾ group [[[]]]
[[[[]]]]

·∾ group ["one","two"]
[["one"],["two"]]

·∾ group ["onnneee","twoo"]
[["onnneee"],["twoo"]]

·∾ group "onnneee"
["o","nnn","eee"]
-}
import Data.List (group)
myPack :: Eq a => [a] -> [[a]]
myPack = group
