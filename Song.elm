module Song where

-- MODEL

type alias Song = {
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


