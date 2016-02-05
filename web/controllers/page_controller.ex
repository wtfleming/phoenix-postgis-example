defmodule OceanShipLogbooks.PageController do
  use OceanShipLogbooks.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
