module Views.About.View exposing (..)

import Html exposing (Html, div, text)
import Views.About.Model exposing (Model)


view : Model -> Html msg
view model =
    div [ ]
      [ div [ ]
          [ text model.text ]
      ]
