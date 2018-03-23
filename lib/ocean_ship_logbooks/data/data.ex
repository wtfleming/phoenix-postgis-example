defmodule OceanShipLogbooks.Data do
  @moduledoc """
  The Data context.
  """
  import Ecto.Query, warn: false
  alias OceanShipLogbooks.Repo

  alias OceanShipLogbooks.Data.Ship

  @doc """
  Returns the list of ship data.

  ## Examples

      iex> list_ship()
      [%ShipData{}, ...]
  """
  def list_ship(name) do
    query = from s in Ship,
    where: s.ship == ^name,
    order_by: [asc: s.utc],
    select: s

    Repo.all(query)
  end
end
