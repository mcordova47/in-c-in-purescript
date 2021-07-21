module Main
  ( main
  ) where

import Prelude

import Effect (Effect)
import Elmish (ComponentDef, boot)
import Elmish.HTML.Styled as H

main :: Effect Unit
main =
  boot
    { domElementId: "app"
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
      H.div "vh-100 d-flex flex-column justify-content-center"
        [ H.div "ml-4" $
            H.div "watercolor-1" R.empty
        , H.div "row" $
            H.h1 "page-header text-center col-10 offset-1 col-md-8 offset-md-2 col-lg-6 offset-lg-3" "Cade Farms"
        , H.div "text-right mr-4" $
            H.div "watercolor-2" R.empty
        ]
