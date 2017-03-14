module View exposing (..)

import Html exposing (Html, div, text)
import Messages exposing (Msg(..))
import Models exposing (Model)
import Routing.Router exposing (Route(..))
import Errors.ErrorViews exposing (notFoundView)
import Views.Messages exposing (messagesView)
import Views.Login.View as LoginView
import Views.About.View as AboutView

view : Model -> Html Msg
view model =
    case model.route of
        MessagesRoute ->
            messagesView model.messages
        LoginRoute ->
            Html.map LoginMsg (LoginView.view model.login)
        AboutRoute ->
            AboutView.view model.about
        NotFoundRoute ->
            notFoundView
