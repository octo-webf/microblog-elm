module View exposing (..)

import Html exposing (Html, div, text)
import Messages exposing (Msg(..))
import Models exposing (Model)
import Routing.Router exposing (Route(..))
import Errors.ErrorViews exposing (notFoundView)
import Components.Login exposing (loginView)


view : Model -> Html Msg
view model =
    case model.route of
        LoginRoute ->
            loginView model.login
        NotFoundRoute ->
            notFoundView
