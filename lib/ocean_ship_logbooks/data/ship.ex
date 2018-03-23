defmodule OceanShipLogbooks.Data.Ship do
  use Ecto.Schema

  schema "ship_data" do
    field :ship, :string
    field :utc,  :integer
    field :geom, Geo.Point
  end
end
