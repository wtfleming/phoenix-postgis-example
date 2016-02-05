defmodule OceanShipLogbooks.ShipData do
  use OceanShipLogbooks.Web, :model
  schema "ship_data" do
    field :ship, :string
    field :utc,  :integer
    field :geom, Geo.Point
  end
end
