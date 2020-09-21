import Test.Hspec (hspec, describe, it, shouldBe, shouldThrow, anyException)
import Test.QuickCheck (property)
import Three (elementAt)

main = hspec $ do
  describe "elementAt" $ do
    it "will throw an error if the list is empty" $ do
      elementAt [] 4 `shouldThrow` anyException
    it "returns 8 for elementAt [1,4,8,12] 3" $ do
      elementAt [1,4,8,12] 3 `shouldBe` 8
