module Models exposing (..)

import Routing.Router exposing (Route)
import Views.Login exposing (LoginModel, defaultLoginModel)
import Views.Messages exposing (MessagesModel, defaultMessagesModel)

type alias Model =
    { route : Route
    , messages : MessagesModel
    , login : LoginModel
    }

initialModel : Route -> Model
initialModel route =
    { route = route
    , messages = defaultMessagesModel
    , login = defaultLoginModel
    }