module Set01Challenge01Spec ( spec ) where

-- External Dependencies
import Test.Hspec
import qualified Data.ByteString.UTF8 as UTF8

-- Internal Dependencies
import HexToBase64


{- Set 01 Challenge 01 Tests -}
spec :: Spec
spec = do
    describe "Set 1 Challenge 1" $ do
        context "Convert hex to base64" $ do
            it "should convert the given string to base64" $
              hexToBase64 ( UTF8.fromString "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d" )
              `shouldBe`
              ( UTF8.fromString "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t" )
