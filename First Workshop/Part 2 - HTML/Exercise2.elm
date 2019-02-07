-- HTML docs http://package.elm-lang.org/packages/elm-lang/html/latest/
-- Modify the HelloWorld example to make an unordered list with a few items
-- and an input/button combo at the bottom


module Exercise2 exposing (main)

import Html exposing (button, div, input, li, text, ul)
import Html.Attributes exposing (type_)


main =
    div []
        [ ul []
            [ li []
                [ text "thing 0" ]
            , li []
                [ text "thing 1" ]
            , li []
                [ text "thing 2" ]
            , li []
                [ text "thing 3" ]
            ]
        , input [ type_ "text" ] []
        , button [] [ text "click me" ]
        ]
