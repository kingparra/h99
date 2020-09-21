import Test.Hspec (hspec, describe, it, shouldBe)
import Test.QuickCheck 
import Five (myReverse)

main = hspec $ do
  describe "myReverse" $ do
    it "will return [10,9..1] for [1..10]" $ do
      myReverse [1..10] `shouldBe` [10,9..1]
    it "will reverse a sentence" $ do
      myReverse "A man, a plan, a canal, panama!" `shouldBe` "!amanap ,lanac a ,nalp a ,nam A"
    it "reverses any arbitrary list" $ do
      property $ \x xs -> myReverse ((x :: Char) : (xs :: [Char])) == reverse (x:xs)

