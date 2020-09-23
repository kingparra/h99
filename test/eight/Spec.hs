import Test.Hspec
import Eight (myCompress)

main = hspec $ do
  describe "myCompress" $ do
    it "myCompress \"aaabccaadeeee\" will return \"abcade\"" $ do
      myCompress "aaabccaadeeee" `shouldBe` "abcade"
