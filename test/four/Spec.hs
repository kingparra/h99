module Spec where
import Test.Hspec (hspec, describe, it, shouldBe)
import Test.QuickCheck 
import Four (myLength)

main = hspec $ do
  describe "" $ do
    it "" $ do
      1 `shouldBe` 1

