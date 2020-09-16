import Test.Hspec (hspec, describe, it, shouldBe, shouldThrow, anyException)
import Test.QuickCheck (property)
import One (myLast)

main :: IO ()
main = hspec $ do
  describe "myLast" $ do

    it "will throw an error if the list is empty" $ do
      myLast [] `shouldThrow` anyException

    it "works for the simplest possible case [1,2]" $ do
      myLast [1,2] `shouldBe` 2

    it "last element of [1..3]" $ do
      myLast [1..3] `shouldBe` 3

    it "last element of any three element list" $ do
      property $ \x xs xxs -> myLast [x,xs,xxs] == (xxs :: Int)
