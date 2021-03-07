defmodule CentralPhoenixWeb.PageController do
  use CentralPhoenixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
