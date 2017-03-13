module Views.Login.Model exposing (..)


type alias Model =
    { logo : String
    , intro : String
    , inputPlaceholder : String
    , submitLabel : String
    , path : String
    }


defaultModel : Model
defaultModel =
    { logo = "https://avatars0.githubusercontent.com/u/4359353?v=3&s=200"
    , intro = "Has autem provincias, quas Orontes ambiens amnis imosque pedes Cassii montis illius celsi praetermeans funditur in Parthenium mare, Gnaeus Pompeius superato Tigrane regnis Armeniorum abstractas dicioni Romanae coniunxit."
    , inputPlaceholder = "Your username"
    , submitLabel = "Login"
    , path = "hola"
    }