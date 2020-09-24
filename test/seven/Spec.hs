import Test.Hspec (hspec, describe, it, shouldBe)
import Test.QuickCheck
import Seven

main = hspec $ do

  describe "myFlatten" $ do
    it "A NestedList of three levels that contains elements\
       \ 1..5 collectively will flatten to [1,2,3,4,5]" $ do
      myFlatten (List [ Elem 1
                  , List [ Elem 2
                     , List [ Elem 3 , Elem 4 ]
                     , Elem 5]]) `shouldBe` [1,2,3,4,5]

  describe "myFlatten', a different implementation" $ do
    it "A NestedList of three levels that contains elements\
       \ 1..5 collectively will flatten to [1,2,3,4,5]" $ do
      myFlatten' (List [ Elem 1
                  , List [ Elem 2
                     , List [ Elem 3 , Elem 4 ]
                     , Elem 5]]) `shouldBe` [1,2,3,4,5]

  describe "myFlatten''" $ do
    it "A NestedList of three levels that contains elements 1..5 collectively will flatten to [1,2,3,4,5]" $ do
      myFlatten'' (List [Elem 1, List [Elem 2, List [Elem 3 , Elem 4] , Elem 5]]) `shouldBe` [1,2,3,4,5]
    it "will flatten hyiltiz' list" $ do
      myFlatten'' (List [Elem 3, List [Elem 1, List [Elem 4, Elem 1, List [Elem 5]],Elem 9], Elem 2]) `shouldBe` [3,1,4,1,5,9,2]
    it "will work for the simplest case, (Elem 1)" $ do
      myFlatten'' (Elem 1) `shouldBe` [1]
    it "will work when there is one level" $ do
      myFlatten'' (List [Elem 1, Elem 2]) `shouldBe` [1,2]
