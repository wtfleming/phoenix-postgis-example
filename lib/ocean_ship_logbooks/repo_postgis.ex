defmodule OceanShipLogbooks.RepoPostGIS do
  Postgrex.Types.define(OceanShipLogbooks.PostgresTypes,
      [Geo.PostGIS.Extension] ++ Ecto.Adapters.Postgres.extensions(),
      library: Geo)
end
