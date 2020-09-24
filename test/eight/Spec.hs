import Test.Hspec
import Eight (myCompress)

main = hspec $ do
  describe "myCompress" $ do

    it "myCompress [1] will return [1]" $ do
      myCompress [1] `shouldBe` [1]

    it "myCompress [1,2] will return [1,2]" $ do
      myCompress [1,2] `shouldBe` [1,2]

    it "myCompress \"aaabccaadeeee\" will return \"abcade\"" $ do
      myCompress "aaabccaadeeee" `shouldBe` "abcade"

    it "myCompress \"sssylitherin loves  sssnakesss\" will\
       \ return \"sylitherin loves snakes\"" $ do
      myCompress "sssylitherin  loves  sssnakesss" `shouldBe` "sylitherin loves snakes"
