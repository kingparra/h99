import Ten (myEncode)
import Test.Hspec
import Test.QuickCheck

main = hspec $ do
  describe "myEncode" $ do
    it "will get run-length encoding of sample string" $ do
      myEncode "aaaabccaadeeee" `shouldBe` [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
    it "non-contiguous instances of the same character gets different counts" $ do
      myEncode "ffffffxxxxxxaaaaaanononononono" `shouldBe` [(6,'f'),(6,'x'),(6,'a'),(1,'n'),
        (1,'o'),(1,'n'),(1,'o'),(1,'n'),(1,'o'),(1,'n'),(1,'o'),(1,'n'),(1,'o'),(1,'n'),(1,'o')]

