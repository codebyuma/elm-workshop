-- Convert The code from "The Problem" to use Union types for Msg


module FullApp exposing (Model, Msg(..), initModel, main, update, view)

import Browser
import Html exposing (Html, button, div, input, text)
import Html.Events exposing (onClick)


type alias Model =
    { count : Int, searchText : String }


type Msg
    = Increment Int
    | Decrement Int
    | SearchText String


initModel : Model
initModel =
    { count = 0, searchText = "" }


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment amount ->
            { model | count = model.count + amount }

        Decrement amount ->
            { model | count = model.count - amount }

        SearchText text ->
            { model | searchText = text }


view : Model -> Html Msg
view model =
    div []
        [ div [] [ model.count |> String.fromInt |> text ]
        , button [ onClick (Increment 2) ] [ text "Increment 2" ]
        , button [ onClick (Decrement 2) ] [ text "Decerement 2" ]
        , button [ onClick (SearchText "Elm tutorials!") ] [ text "Search" ]
        , div [] [ text model.searchText ]
        ]


main =
    Browser.sandbox { init = initModel, view = view, update = update }
