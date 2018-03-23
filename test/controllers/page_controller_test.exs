defmodule OceanShipLogbooks.PageControllerTest do
  use OceanShipLogbooksWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Captain Cook's travels"
  end
end
