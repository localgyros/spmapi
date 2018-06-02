defmodule SpmapiWeb.PageController do
  use SpmapiWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
