ExUnit.start

Mix.Task.run "ecto.create", ~w(-r OceanShipLogbooks.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r OceanShipLogbooks.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(OceanShipLogbooks.Repo)

