import Test.Hspec
import Test.QuickCheck
import Nine

main = hspec $ do
  describe "myPack" $ do
    it "will group consecutively repeated characters" $ do
      myPack "aaaabccaadeeee" `shouldBe` ["aaaa","b","cc","aa","d","eeee"]
