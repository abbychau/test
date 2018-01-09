defmodule VelcronWeb.PageController do
  use VelcronWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
