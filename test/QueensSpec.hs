module QueensSpec (spec) where

import Test.Hspec
import Test.Hspec.QuickCheck
import Queens

spec :: Spec
spec = do
  describe "test queens" $ do
    it "test 1 queen puzzle" $ queens 1 `shouldBe` [[1]]
    it "test 2 queens puzzle" $ queens 2 `shouldBe` []
    it "test 3 queens puzzle" $ queens 3 `shouldBe` []
    it "test 4 queens puzzle" $ queens 4 `shouldBe` [[2, 4, 1, 3], [3, 1, 4, 2]]
