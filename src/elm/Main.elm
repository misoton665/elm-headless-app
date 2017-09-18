module Main exposing (..)

import Model exposing (Model, initialModel)
import Msg exposing (Msg)
import Ports exposing (subscriptions)
import Update exposing (update)

-- to avoid an elm-make's bug https://github.com/elm-lang/elm-make/issues/134
import Json.Decode exposing (..)


main : Program Never Model Msg
main =
    Platform.program { init = init, update = update, subscriptions = always subscriptions }


init : ( Model, Cmd Msg )
init =
    ( initialModel, Cmd.none )
