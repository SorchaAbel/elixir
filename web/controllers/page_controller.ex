defmodule BlogElixirGirls.PageController do
  use BlogElixirGirls.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
