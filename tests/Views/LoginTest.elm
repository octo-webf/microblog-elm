module Views.LoginTest exposing (all)

import Test exposing (..)
import Test.Html.Query as Query
import Test.Html.Selector exposing (..)

import Views.Login.View exposing (view)
import Views.Login.Model exposing (defaultModel)


all : Test
all =
    let
        loginComponent =
            view defaultModel
                |> Query.fromHtml
    in
        describe "view loginView"
            [ test "Form should have correct image" <|
                \() ->
                    loginComponent
                        |> Query.find [ tag "img" ]
                        |> Query.has [ attribute "src" defaultModel.logo ]
            , test "Form should have correct intro" <|
                \() ->
                    loginComponent
                        |> Query.find [ tag "p" ]
                        |> Query.has [ text defaultModel.intro ]
            , test "Form submit should have correct placeholder" <|
                \() ->
                    loginComponent
                        |> Query.find [ tag "input" ]
                        |> Query.has [ attribute "placeholder" defaultModel.inputPlaceholder ]
            , test "Form submit should have correct submit label" <|
                \() ->
                    loginComponent
                        |> Query.find [ tag "button" ]
                        |> Query.has [ text defaultModel.submitLabel]
            ]
