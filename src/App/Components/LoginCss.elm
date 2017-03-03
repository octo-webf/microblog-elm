module Components.LoginCss exposing (..)

import Css exposing (..)


type CssClasses
    = Login | LoginHeader | LoginHeaderLogo | LoginHeaderLogoImage | LoginBodyDescription | LoginBodyForm | LoginForm | LoginFormUsername | LoginFormSubmit


css : List Snippet
css =
    [ class Login
        [ backgroundColor white
        , color (hex "8899a6")
        , borderRadius (px 5)
        , border3 (px 1) solid (hex "e1e8ed")
        , width (px 400)
        , marginLeft (px 10)
        , marginRight (px 10)
        ]
    , class LoginHeader
        [ textAlign center ]
    , class LoginHeaderLogo
        [ backgroundColor white
        , boxSizing borderBox
        , width (px 100)
        , height (px 100)
        , padding (px 10)
        , borderRadius (px 3)
        , border3 (px 1) solid (hex "e1e8ed")
        , display inlineBlock
        , marginTop (px -50)
        ]
    , class LoginHeaderLogoImage
        [ width (px 80) ]
    , class LoginBodyDescription
        [ padding2 (px 6) (px 20) ]
    , class LoginForm
        [ width (px 260)
        , display inlineBlock
        ]
    , class LoginBodyForm
        [ textAlign center
        , padding3 (px 20) (px 20) (px 40)
        , borderTop3 (px 1) solid (hex "eee")
        ]
    , class LoginFormUsername
        [ display inlineBlock
        , width (pct 100)
        , boxSizing borderBox
        , padding2 (px 4) (px 10)
        , outline zero
        , backgroundColor white
        , borderRadius (px 3)
        , fontSize (px 13)
        , lineHeight (px 20)
        , margin3 zero zero (px 10)
        , focus [
            borderColor (hex "1da1f2")
          ]
        ]
    , class LoginFormSubmit
        [ backgroundColor (hex "1da1f2")
        , color white
        , textDecoration none
        , boxSizing borderBox
        , width (pct 100)
        , cursor pointer
        , borderRadius (px 4)
        , margin zero
        , outline zero
        , border zero
        , boxShadow none
        , fontSize (px 16)
        , fontWeight normal
        , padding2 (px 11) (px 16)
        , active [
            backgroundColor (hex "3b88c3")
          ]
        ]
    ]

white : Color
white =
    hex "ffffff"