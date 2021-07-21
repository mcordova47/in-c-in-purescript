module Main
  ( main
  ) where

import Prelude

import Effect (Effect)
import Elmish (ComponentDef)
import Elmish.Boot (defaultMain)
import Elmish.HTML.Styled as H

main :: Effect Unit
main =
  defaultMain
    { elementId: "app"
    , def
    }

type State = Unit

type Message = Void

def :: forall m. ComponentDef m Message State
def =
  { init: pure unit
  , update: \_ _ -> pure unit
  , view
  }
  where
    view _ _ =
      H.h1 ""
      [ H.em "" "in C"
      , H.text ", in PureScript"
      ]
