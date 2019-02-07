-- Take the simple counter example and implement a decrement button


module Exercise3 exposing (initModel, main, update, view)

import Browser
import Html exposing (button, div, text)
import Html.Events exposing (onClick)


main =
    Browser.sandbox { init = initModel, view = view, update = update }


initModel =
    0


update msg model =
    case msg of
        "Increment" ->
            model + 1

        "Decrement" ->
            model - 1

        _ ->
            model


view model =
    div []
        [ div [] [ model |> String.fromInt |> text ]
        , button [ onClick "Increment" ] [ text "GO UP" ]
        , button [ onClick "Decrement" ] [ text "GO DOWN" ]
        ]
