module Platform019 exposing (worker)

{-| In Elm 0.19, `programWithFlags` was renamed `worker`.

@docs worker

-}

import Platform exposing (Program, programWithFlags)


{-| Create a [headless] program with no user interface.

This is great if you want to use Elm as the &ldquo;brain&rdquo; for something
else. For example, you could send messages out ports to modify the DOM, but do
all the complex logic in Elm.

-}
worker :
    { init : flags -> ( model, Cmd msg )
    , update : msg -> model -> ( model, Cmd msg )
    , subscriptions : model -> Sub msg
    }
    -> Program flags model msg
worker =
    programWithFlags
