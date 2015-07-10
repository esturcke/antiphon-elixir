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

view address model = model.song |> Song.view address

update _ model = model
