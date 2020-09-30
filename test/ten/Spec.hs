import Ten (myEncode)
import Test.Hspec
import Test.QuickCheck

main = hspec $ do
  describe "myEncode" $ do
    it "will get run-length encoding of sample string" $ do
      myEncode "aaaabccaadeeee" `shouldBe` [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]