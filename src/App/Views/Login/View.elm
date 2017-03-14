module Views.Login.View exposing (..)

import Html.CssHelpers
import Html exposing (Html, div, img, p, text, form, button, input, a)
import Html.Attributes exposing (src, href, type_, autocomplete, placeholder, autofocus)

import Css.AppCss exposing (CssClasses(..))
import Views.Login.Css exposing (CssClasses(..))
import Views.Login.Model exposing (Model)
import Views.Login.Messages exposing (Msg(..))
import Components.Link exposing (onLinkClick)


{ class } =
    Html.CssHelpers.withNamespace "microblog"


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
                  [ button [ class [ LoginFormSubmit ]
                           , type_ "submit"
                           , onLinkClick (ChangeLocation "/")
                           ]
                           [ text model.submitLabel ]
                  ]
                ]
              ]
            ]
          ]
        ]
      ]
