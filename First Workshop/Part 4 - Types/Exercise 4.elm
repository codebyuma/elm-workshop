--Add type annotations!


module Exercise4 exposing (initModel, main, update, view)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


initModel : Int
initModel =
    0



-- msg is a string, model is an int, returns an int


update : String -> Int -> Int
update msg model =
    case msg of
        "Increment" ->
            model + 1

        _ ->
            model


view : Int -> Html String
view model =
    div []
        [ div [] [ model |> String.fromInt |> text ]
        , button [ onClick "Increment" ] [ text "Increment" ]
        ]



-- Don't worry about this one


main =
    Browser.sandbox { init = initModel, view = view, update = update }
