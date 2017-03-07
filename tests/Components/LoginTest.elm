module Components.LoginTest exposing (all)

import Test exposing (..)
import Test.Html.Query as Query
import Test.Html.Selector exposing (..)

import Components.Login exposing (loginView, defaultLoginModel)


all : Test
all =
    let
        loginComponent =
            loginView defaultLoginModel
                |> Query.fromHtml
    in
        describe "view loginView"
            [ test "Form should have correct image" <|
                \() ->
                    loginComponent
                        |> Query.find [ tag "img" ]
                        |> Query.has [ attribute "src" "https://avatars0.githubusercontent.com/u/4359353?v=3&s=200" ]
            , test "Form should have correct intro" <|
                \() ->
                    loginComponent
                        |> Query.find [ tag "p" ]
                        |> Query.has [ text "Has autem provincias, quas Orontes ambiens amnis imosque pedes Cassii montis illius celsi praetermeans funditur in Parthenium mare, Gnaeus Pompeius superato Tigrane regnis Armeniorum abstractas dicioni Romanae coniunxit." ]
            , test "Form submit should have correct placeholder" <|
                \() ->
                    loginComponent
                        |> Query.find [ tag "input" ]
                        |> Query.has [ attribute "placeholder" "Your username" ]
            ]
