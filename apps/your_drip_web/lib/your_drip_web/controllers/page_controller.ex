defmodule YourDripWeb.PageController do
  use YourDripWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
