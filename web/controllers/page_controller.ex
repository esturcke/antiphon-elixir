defmodule Antiphon.PageController do
  use Antiphon.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
