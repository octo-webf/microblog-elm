module Views.AboutTest exposing (all)

import Test exposing (..)
import Test.Html.Query as Query
import Test.Html.Selector exposing (..)

import Views.About.Model exposing (defaultModel)
import Views.About.View exposing (view)


all : Test
all =
    let
        aboutComponent =
            view defaultModel
                |> Query.fromHtml
    in
        describe "About component view"
            [ test "Should contain the correct text" <|
                \() ->
                    aboutComponent
                        |> Query.find [ tag "div" ]
                        |> Query.has [ text defaultModel.text ]
            ]
