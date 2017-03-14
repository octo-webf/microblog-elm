module Views.About.Model exposing (..)


type alias Model =
    { text : String
    }


defaultModel : Model
defaultModel =
    { text = "About"
    }