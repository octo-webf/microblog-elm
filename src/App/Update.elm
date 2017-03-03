module Update exposing (..)

import Messages exposing (Msg(..))
import Models exposing (Model)
import Routing.Router exposing (parseLocation)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        OnLocationChange location ->
            let
                newRoute =
                    parseLocation location
            in
                ( { model | route = newRoute }, Cmd.none )
