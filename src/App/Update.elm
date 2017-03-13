module Update exposing (..)

import Messages exposing (Msg(..))
import Models exposing (Model)
import Routing.Router exposing (parseLocation)
import Views.Login.Update as LoginUpdate

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        OnLocationChange location ->
            let
                newRoute =
                    parseLocation location
            in
                ( { model | route = newRoute }, Cmd.none )
        LoginMsg loginMsg ->
            let
                ( updatedLoginModel, cmd ) =
                    LoginUpdate.update loginMsg model.login
            in
                ( { model | login = updatedLoginModel }, Cmd.none )
