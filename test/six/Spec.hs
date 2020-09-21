import Six (isPalindrome)
import Test.Hspec
import Test.QuickCheck

main = hspec $ do
  describe "Simple lists can be checked for palindromity" $ do
    it "should return False for [1,2,3]" $ do
      isPalindrome [1,2,3] `shouldBe` False
    it "should return True for \"madamimadam\"" $ do
      isPalindrome "madamimadam" `shouldBe` True
    it "should return True for [1,2,4,8,16,8,4,2,1]" $ do
      isPalindrome [1,2,4,8,16,8,4,2,1] `shouldBe` True

