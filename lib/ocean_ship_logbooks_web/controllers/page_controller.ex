defmodule OceanShipLogbooksWeb.PageController do
  use OceanShipLogbooksWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
