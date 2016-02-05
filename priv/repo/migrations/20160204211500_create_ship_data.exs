defmodule OceanShipLogbooks.Repo.Migrations.CreateShipData do
  use Ecto.Migration

  def change do
    create table(:ship_data) do
      add :ship,     :string
      add :utc,      :integer
      add :geom,     :geometry
    end
    create index(:ship_data, [:ship])
  end

end
