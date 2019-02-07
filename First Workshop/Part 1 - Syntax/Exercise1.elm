-- Create a record named myRecord with a bool, a float, and a string prop
-- Create a list of strings, named myList
{- Write a function called verifyName that takes a string and
   returns if the string is equal to your name
-}


module Main exposing (myRecord)


myRecord =
    { truth = True
    , someNum = 12.3
    , word = "string"
    }


myList =
    [ "one", "two", "three" ]


verifyName name =
    if name == "Uma" then
        True

    else
        False
