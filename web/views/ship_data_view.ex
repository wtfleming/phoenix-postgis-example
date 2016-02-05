defmodule OceanShipLogbooks.ShipDataView do
  use OceanShipLogbooks.Web, :view

  def render("show_ships.json", %{ships: ships}) do
    %{ship_data: render_many(ships, OceanShipLogbooks.ShipDataView, "ship_data.json")}
  end

  def render("ship_data.json", %{ship_data: ship}) do
    {lat, lon} = ship.geom.coordinates

    %{ship: ship.ship,
      utc: ship.utc,
      lat: lat,
      lon: lon}
  end

end
