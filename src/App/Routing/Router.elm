module Routing.Router exposing (..)

import Navigation exposing (Location)
import UrlParser exposing (..)


type Route
    = MessagesRoute
    | LoginRoute
    | NotFoundRoute


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map MessagesRoute top
        , map LoginRoute (s "login")
        ]


parseLocation : Location -> Route
parseLocation location =
    case (parsePath matchers location) of
        Just route ->
            route

        Nothing ->
            NotFoundRoute
