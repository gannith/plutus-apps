-- File auto generated by purescript-bridge! --
module Plutus.V1.Ledger.Slot where

import Prelude

import Control.Lazy (defer)
import Data.Argonaut (encodeJson, jsonNull)
import Data.Argonaut.Decode (class DecodeJson)
import Data.Argonaut.Decode.Aeson ((</$\>), (</*\>), (</\>))
import Data.Argonaut.Encode (class EncodeJson)
import Data.Argonaut.Encode.Aeson ((>$<), (>/\<))
import Data.BigInt.Argonaut (BigInt)
import Data.Generic.Rep (class Generic)
import Data.Lens (Iso', Lens', Prism', iso, prism')
import Data.Lens.Iso.Newtype (_Newtype)
import Data.Lens.Record (prop)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype, unwrap)
import Data.Show.Generic (genericShow)
import Data.Tuple.Nested ((/\))
import Type.Proxy (Proxy(Proxy))
import Data.Argonaut.Decode.Aeson as D
import Data.Argonaut.Encode.Aeson as E
import Data.Map as Map

newtype Slot = Slot { getSlot :: BigInt }

derive instance Eq Slot

instance Show Slot where
  show a = genericShow a

instance EncodeJson Slot where
  encodeJson = defer \_ -> E.encode $ unwrap >$<
    ( E.record
        { getSlot: E.value :: _ BigInt }
    )

instance DecodeJson Slot where
  decodeJson = defer \_ -> D.decode $ (Slot <$> D.record "Slot" { getSlot: D.value :: _ BigInt })

derive instance Generic Slot _

derive instance Newtype Slot _

--------------------------------------------------------------------------------

_Slot :: Iso' Slot { getSlot :: BigInt }
_Slot = _Newtype
