import Test.Hspec (hspec, describe, it, shouldBe)
import Test.QuickCheck 
import Four (myLength)

main = hspec $ do
  describe "myLength" $ do
    it "will return 10 for [1..10]" $ do
      myLength [1..10] `shouldBe` 10

