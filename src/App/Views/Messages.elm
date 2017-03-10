module Views.Messages exposing (..)

import Html.CssHelpers
import Html exposing (Html, div, text)

import Css.AppCss exposing (CssClasses(..))

{ class } =
    Html.CssHelpers.withNamespace "microblog"


-- MODEL


type alias MessagesModel =
    { title : String
    }


defaultMessagesModel : MessagesModel
defaultMessagesModel =
    { title = "Liste des messages"
    }


-- VIEW

messagesView : MessagesModel -> Html msg
messagesView model =
    div [ class [ App ] ]
        [ text model.title ]

