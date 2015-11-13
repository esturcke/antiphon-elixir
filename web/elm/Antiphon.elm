import Html exposing (div, text)
import StartApp
import Song

-- MODEL

type alias Model = {
    song : Song.Model
}

model = { song = Song.blank }

main =
  StartApp.start { model = model, view = view, update = update }

song =
    """Hello there
    Foo bar

    C   D    G
    hello
    """

view address model = model.song |> Song.update song |> Song.view address

update _ model = model
