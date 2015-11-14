defmodule Antiphon.PageControllerTest do
  use Antiphon.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert html_response(conn, 200) =~ "<div id=\"elm-main\"></div>"
  end
end
