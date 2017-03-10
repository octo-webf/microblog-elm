module Css.AppCss exposing (..)

import Css exposing (..)
import Css.Elements exposing (body, input)
import Css.Namespace exposing (namespace)

import Views.LoginCss

type CssClasses =
    App

css : Stylesheet
css =
    (stylesheet << namespace "microblog")
    (
        [ body
            [ margin zero
            , fontSize (px 14)
            , fontFamilies [ "Helvetica Neue", "Helvetica", "Arial", .value sansSerif ]
            , backgroundColor (hex "f5f8fa")
            ]
        , class App
            [ displayFlex
            , justifyContent center
            , padding2 (px 150) zero
            ]
        , input
            [ fontSize (px 14)
            , height (px 40)
            , boxSizing borderBox
            , borderRadius (px 3)
            , color (hex "666")
            , padding2 (px 4) (px 14)
            , border3 (px 1) solid (hex "99CDE1")
            ]
        ]
        ++ Views.LoginCss.css
    )
