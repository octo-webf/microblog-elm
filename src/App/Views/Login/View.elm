module Views.Login.View exposing (..)

import Html.CssHelpers
import Html exposing (..)
import Html.Events exposing (onWithOptions)
import Html.Attributes exposing (src, href, type_, autocomplete, placeholder, autofocus)
import Json.Decode as Decode

import Css.AppCss exposing (CssClasses(..))
import Views.Login.Css exposing (CssClasses(..))
import Views.Login.Model exposing (Model)
import Views.Login.Messages exposing (Msg(..))


{ class } =
    Html.CssHelpers.withNamespace "microblog"


-- VIEW


view : Model -> Html Msg
view model =
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
                  [ a [ href "/", onLinkClick (ChangeLocation "/") ] [ text "Home" ]
                  ]
                ]
              ]
            ]
          ]
        ]
      ]

onLinkClick : msg -> Attribute msg
onLinkClick message =
    let
        options =
            { stopPropagation = False
            , preventDefault = True
            }
    in
        onWithOptions "click" options (Decode.succeed message)