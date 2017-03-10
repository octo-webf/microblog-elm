module View exposing (..)

import Html exposing (Html, div, text)
import Messages exposing (Msg(..))
import Models exposing (Model)
import Routing.Router exposing (Route(..))
import Errors.ErrorViews exposing (notFoundView)
import Views.Login exposing (loginView)
import Views.Messages exposing (messagesView)


view : Model -> Html Msg
view model =
    case model.route of
        MessagesRoute ->
            messagesView model.messages
        LoginRoute ->
            loginView model.login
        NotFoundRoute ->
            notFoundView
