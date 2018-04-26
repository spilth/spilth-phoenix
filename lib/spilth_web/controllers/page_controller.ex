defmodule SpilthWeb.PageController do
  use SpilthWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
