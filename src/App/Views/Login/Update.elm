module Views.Login.Update exposing (..)

import Navigation

import Views.Login.Model exposing (Model)
import Views.Login.Messages exposing (Msg(..))

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ChangeLocation requiredPath ->
            ( { model | requiredPath = requiredPath }, Navigation.newUrl requiredPath )
