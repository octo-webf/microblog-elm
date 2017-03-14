module Tests exposing (..)

import Test exposing (..)
import Views.LoginTest as LoginTest
import Views.AboutTest as AboutTest

all : Test
all =
    describe "microblog-elm-tests"
            [ LoginTest.all
            , AboutTest.all
            ]
