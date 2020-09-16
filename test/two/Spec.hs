import Test.Hspec (hspec, describe, it, shouldBe, shouldThrow, anyException)
import Test.QuickCheck (property)
import Two (myButLast)

main :: IO ()
main = hspec $ do
  describe "myButLast" $ do

    it "will throw an error if the list is empty" $ do
      myButLast [] `shouldThrow` anyException

    it "works for the simplest possible case [1,2]" $ do
      myButLast [1,2] `shouldBe` 1

    it "second to last element of [1..3]" $ do
      myButLast [1..3] `shouldBe` 2

    it "second to last element of any three element list" $ do
      property $ \x xs xxs -> myButLast [x,xs,xxs] == (xs :: Int)

    it "returns 8 for [1,4,8,12]" $ do
      myButLast [1,4,8,12] `shouldBe` 8
