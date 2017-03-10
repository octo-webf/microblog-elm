module Tests exposing (..)

import Test exposing (..)
import Views.LoginTest as LoginTest

all : Test
all =
    describe "microblog-elm-tests"
            [ LoginTest.all
            ]
