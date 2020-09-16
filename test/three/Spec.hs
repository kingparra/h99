import Test.Hspec (hspec, describe, it, shouldBe, shouldThrow, anyException)
import Test.QuickCheck (property)
import Three (elementAt)

main = hspec $ do
  describe "elementAt" $ do

    it "will throw an error if the list is empty" $ do
      elementAt 4 [] `shouldThrow` anyException

    it "returns 8 for elementAt 3 [1,4,8,12]" $ do
      elementAt 3 [1,4,8,12] `shouldBe` 8
