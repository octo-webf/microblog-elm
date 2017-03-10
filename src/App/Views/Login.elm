module Views.Login exposing (..)

import Html.CssHelpers
import Html exposing (Html, div, text, img, p, form, input, button)
import Html.Attributes exposing (src, type_, autocomplete, placeholder, autofocus)

import Views.LoginCss exposing (CssClasses(..))
import Css.AppCss exposing (CssClasses(..))

{ class } =
    Html.CssHelpers.withNamespace "microblog"


-- MODEL


type alias LoginModel =
    { logo : String
    , intro : String
    , inputPlaceholder : String
    , submitLabel : String
    }


defaultLoginModel : LoginModel
defaultLoginModel =
    { logo = "https://avatars0.githubusercontent.com/u/4359353?v=3&s=200"
    , intro = "Has autem provincias, quas Orontes ambiens amnis imosque pedes Cassii montis illius celsi praetermeans funditur in Parthenium mare, Gnaeus Pompeius superato Tigrane regnis Armeniorum abstractas dicioni Romanae coniunxit."
    , inputPlaceholder = "Your username"
    , submitLabel = "Login"
    }


-- VIEW


loginView : LoginModel -> Html msg
loginView model =
    div [ class [ App ] ]
      [ div [ class [ Login ] ]
        [ div [ class [ LoginHeader ] ]
          [ div [ class [ LoginHeaderLogo ] ]
            [ img [ class [ LoginHeaderLogoImage ]
                  , src model.logo ] []
            ]
          ]
        , div [ ]
          [ div [ class [ LoginBodyDescription ] ]
            [ p [] [ text model.intro ] ]
          , div [ class [ LoginBodyForm ] ]
            [ div [ class [ LoginForm ] ]
              [ form []
                [ div []
                  [ input [ class [ LoginFormUsername ]
                          , type_ "text"
                          , autocomplete True
                          , placeholder model.inputPlaceholder
                          , autofocus True ] []
                  ]
                , div []
                  [ button [ class [ LoginFormSubmit ]
                           , type_ "submit" ]
                           [ text model.submitLabel ]
                  ]
                ]
              ]
            ]
          ]
        ]
      ]

