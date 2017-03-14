module Messages exposing (..)

import Navigation exposing (Location)
import Views.Login.Messages

type Msg
    = OnLocationChange Location
    | LoginMsg Views.Login.Messages.Msg