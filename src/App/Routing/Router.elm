module Routing.Router exposing (..)

import Navigation exposing (Location)
import UrlParser exposing (..)


type Route
    = MessagesRoute
    | LoginRoute
    | AboutRoute
    | NotFoundRoute


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map MessagesRoute top
        , map LoginRoute (s "login")
        , map AboutRoute (s "about")
        ]


parseLocation : Location -> Route
parseLocation location =
    case (parsePath matchers location) of
        Just route ->
            route

        Nothing ->
            NotFoundRoute
