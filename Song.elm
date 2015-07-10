module Song where

import Html exposing (div, text)

-- MODEL

type alias Model = {
    title   : String,
    artist  : String,
    stanzas : List Stanza,
    raw     : String,
    edit    : Bool
}

type StanzaKind = Verse | Prechorus | Chorus | Bridge

type alias Stanza = {
    kind  : StanzaKind,
    lines : List Phrase
}

type alias Phrase = {
    chord : Chord,
    lyric : String
}

type alias Chord = {
    label : String,
    notes : List Int
}

blank : Model
blank =
    { title   = ""
    , artist  = ""
    , stanzas = []
    , raw     = ""
    , edit    = True
    }

-- UPDATE

update : String -> Model -> Model
update raw model =
    { model | raw <- raw }

-- VIEW

view address model =
    div [] [text model.raw]
