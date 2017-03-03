module Components.Login exposing (..)

import Html exposing (Html, div, text, img, p, form, input, button)
import Html.Attributes exposing (class, src, type_, autocomplete, placeholder, autofocus)

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
    div [ class "login" ]
        [ div [ class "login-header" ]
          [ div [ class "login-header__logo" ]
            [ img [ class "login-header__logo-image"
                  , src model.logo
                  ] []
            ]
          ]
        , div [ class "login-body" ]
          [ div [ class "login-body__description" ]
            [ p [] [ text model.intro ] ]
          , div [ class "login-body__form" ]
            [ div [ class "login-form" ]
              [ form [ class "login-form__form"]
                [ div [ class "login-form__control" ]
                  [ input [ class "login-form__username"
                          , type_ "text"
                          , autocomplete True
                          , placeholder model.inputPlaceholder
                          , autofocus True ] []
                  ]
                , div [ class "login-form__control" ]
                  [ button [ type_ "submit"
                           , class "login-form__identificate"]
                           [ text model.submitLabel ]
                  ]
                ]
              ]
            ]
          ]
        ]
