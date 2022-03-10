-- File auto generated by purescript-bridge! --
module Plutus.V1.Ledger.Scripts where

import Prelude

import Control.Lazy (defer)
import Data.Argonaut (encodeJson, jsonNull)
import Data.Argonaut.Decode (class DecodeJson)
import Data.Argonaut.Decode.Aeson ((</$\>), (</*\>), (</\>))
import Data.Argonaut.Encode (class EncodeJson)
import Data.Argonaut.Encode.Aeson ((>$<), (>/\<))
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

newtype DatumHash = DatumHash String

derive instance Eq DatumHash

derive instance Ord DatumHash

instance Show DatumHash where
  show a = genericShow a

instance EncodeJson DatumHash where
  encodeJson = defer \_ -> E.encode $ unwrap >$< E.value

instance DecodeJson DatumHash where
  decodeJson = defer \_ -> D.decode $ (DatumHash <$> D.value)

derive instance Generic DatumHash _

derive instance Newtype DatumHash _

--------------------------------------------------------------------------------

_DatumHash :: Iso' DatumHash String
_DatumHash = _Newtype

--------------------------------------------------------------------------------

newtype MintingPolicy = MintingPolicy { getMintingPolicy :: String }

instance Show MintingPolicy where
  show a = genericShow a

derive instance Eq MintingPolicy

derive instance Ord MintingPolicy

instance EncodeJson MintingPolicy where
  encodeJson = defer \_ -> E.encode $ unwrap >$<
    ( E.record
        { getMintingPolicy: E.value :: _ String }
    )

instance DecodeJson MintingPolicy where
  decodeJson = defer \_ -> D.decode $ (MintingPolicy <$> D.record "MintingPolicy" { getMintingPolicy: D.value :: _ String })

derive instance Generic MintingPolicy _

derive instance Newtype MintingPolicy _

--------------------------------------------------------------------------------

_MintingPolicy :: Iso' MintingPolicy { getMintingPolicy :: String }
_MintingPolicy = _Newtype

--------------------------------------------------------------------------------

data ScriptError
  = EvaluationError (Array String) String
  | EvaluationException String String

derive instance Eq ScriptError

instance Show ScriptError where
  show a = genericShow a

instance EncodeJson ScriptError where
  encodeJson = defer \_ -> case _ of
    EvaluationError a b -> E.encodeTagged "EvaluationError" (a /\ b) (E.tuple (E.value >/\< E.value))
    EvaluationException a b -> E.encodeTagged "EvaluationException" (a /\ b) (E.tuple (E.value >/\< E.value))

instance DecodeJson ScriptError where
  decodeJson = defer \_ -> D.decode
    $ D.sumType "ScriptError"
    $ Map.fromFoldable
        [ "EvaluationError" /\ D.content (D.tuple $ EvaluationError </$\> D.value </*\> D.value)
        , "EvaluationException" /\ D.content (D.tuple $ EvaluationException </$\> D.value </*\> D.value)
        ]

derive instance Generic ScriptError _

--------------------------------------------------------------------------------

_EvaluationError :: Prism' ScriptError { a :: Array String, b :: String }
_EvaluationError = prism' (\{ a, b } -> (EvaluationError a b)) case _ of
  (EvaluationError a b) -> Just { a, b }
  _ -> Nothing

_EvaluationException :: Prism' ScriptError { a :: String, b :: String }
_EvaluationException = prism' (\{ a, b } -> (EvaluationException a b)) case _ of
  (EvaluationException a b) -> Just { a, b }
  _ -> Nothing

--------------------------------------------------------------------------------

newtype StakeValidator = StakeValidator { getStakeValidator :: String }

instance Show StakeValidator where
  show a = genericShow a

derive instance Eq StakeValidator

derive instance Ord StakeValidator

instance EncodeJson StakeValidator where
  encodeJson = defer \_ -> E.encode $ unwrap >$<
    ( E.record
        { getStakeValidator: E.value :: _ String }
    )

instance DecodeJson StakeValidator where
  decodeJson = defer \_ -> D.decode $ (StakeValidator <$> D.record "StakeValidator" { getStakeValidator: D.value :: _ String })

derive instance Generic StakeValidator _

derive instance Newtype StakeValidator _

--------------------------------------------------------------------------------

_StakeValidator :: Iso' StakeValidator { getStakeValidator :: String }
_StakeValidator = _Newtype

--------------------------------------------------------------------------------

newtype Validator = Validator { getValidator :: String }

instance Show Validator where
  show a = genericShow a

derive instance Eq Validator

derive instance Ord Validator

instance EncodeJson Validator where
  encodeJson = defer \_ -> E.encode $ unwrap >$<
    ( E.record
        { getValidator: E.value :: _ String }
    )

instance DecodeJson Validator where
  decodeJson = defer \_ -> D.decode $ (Validator <$> D.record "Validator" { getValidator: D.value :: _ String })

derive instance Generic Validator _

derive instance Newtype Validator _

--------------------------------------------------------------------------------

_Validator :: Iso' Validator { getValidator :: String }
_Validator = _Newtype
