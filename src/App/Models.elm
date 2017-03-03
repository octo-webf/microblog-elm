module Models exposing (..)

import Routing.Router exposing (Route)
import Components.Login exposing (LoginModel, defaultLoginModel)

type alias Model =
    { route : Route
    , login : LoginModel
    }

initialModel : Route -> Model
initialModel route =
    { route = route
    , login = defaultLoginModel
    }