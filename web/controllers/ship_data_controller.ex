defmodule OceanShipLogbooks.ShipDataController do
  use OceanShipLogbooks.Web, :controller
  alias OceanShipLogbooks.ShipData

  def index(conn, _params) do
    # For simplicity in this example we hard code against
    # a specific ship name.
    query = from s in ShipData,
    where: s.ship == "Endeavour",
    order_by: [asc: s.utc],
    select: s

    ships = Repo.all(query)
    render(conn, "show_ships.json", ships: ships)
  end

  # These next two functions probably do not belong in this controller,
  # but we put them in here for this example.
  def import_from_csv() do
    File.stream!("ship-data.csv")
    |> CSV.decode!(headers: true)
    |> Stream.filter(fn(x) -> x["Lat3"] != "NA" and x["Lon3"] != "NA" end)
    |> Stream.map(&build_ship/1)
    |> Enum.each(&OceanShipLogbooks.Repo.insert!/1)
  end

  defp build_ship(row) do
    {lat, _} = Float.parse(row["Lat3"])
    {lon, _} = Float.parse(row["Lon3"])
    {utc, _} = Integer.parse(row["UTC"])
    geom = %Geo.Point{coordinates: {lat, lon}, srid: 4326}
    %OceanShipLogbooks.ShipData{ship: row["ShipName"], utc: utc, geom: geom}
  end

end
