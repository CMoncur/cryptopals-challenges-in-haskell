module HexToBase64
    ( hexToBase64
    ) where

-- Core Dependencies
import qualified Data.ByteString as BS
import qualified Data.ByteString.Base64 as B64
import qualified Data.HexString as Hex

hexToBase64 :: BS.ByteString -> BS.ByteString
hexToBase64 str =
  let
    hexstr = Hex.toBytes $ Hex.hexString str
  in
    B64.encode hexstr
