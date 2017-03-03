'use strict';

import Elm from './App/Main.elm';

const element = document.getElementById('elm-app');
Elm.Main.embed(element);