import Test.Hspec (hspec, describe, it, shouldBe)
import Test.QuickCheck
import Seven (myFlatten, NestedList(..))

main = hspec $ do
  describe "myFlatten" $ do
    it "A NestedList of three levels that contains elements\
       \ 1..5 collectively will flatten to [1,2,3,4,5]" $ do
      myFlatten (List [ Elem 1
                  , List [ Elem 2
                     , List [ Elem 3 , Elem 4 ]
                     , Elem 5]]) `shouldBe` [1,2,3,4,5]
