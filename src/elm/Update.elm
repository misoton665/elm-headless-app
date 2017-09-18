module Update exposing (..)

import Model exposing (Model)
import Msg exposing (Msg(..))
import Ports as Ports


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Increment ->
            ( { model | count = model.count + 1 }, Ports.println <| toString model.count )

        NoOp ->
            ( model, Cmd.none )