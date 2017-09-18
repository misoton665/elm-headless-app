port module Ports exposing (..)

import Msg exposing (Msg(..))


subscriptions : Sub Msg
subscriptions =
    Sub.batch [
        increment (always Increment)
    ]


port increment : ( () -> msg ) -> Sub msg


port println : String -> Cmd msg