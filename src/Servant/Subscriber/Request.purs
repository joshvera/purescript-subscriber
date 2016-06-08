-- File auto generated by purescript-bridge! --
module Servant.Subscriber.Request where

import Data.Maybe (Maybe)
import Data.Tuple (Tuple)
import Prim (Array, String)
import Servant.Subscriber.Types (Path)

import Data.Generic (class Generic)


data Request =
    Subscribe HttpRequest
  | Unsubscribe Path

derive instance genericRequest :: Generic Request

data HttpRequest =
    HttpRequest {
      httpMethod :: String
    , httpPath :: Path
    , httpHeaders :: Array (Tuple String String)
    , httpQuery :: Array (Tuple String (Maybe String))
    , httpBody :: String
    }

derive instance genericHttpRequest :: Generic HttpRequest

