defmodule ZonaBetsApi.Repo.Migrations.CreateBettors do
  use Ecto.Migration

  def change do
    create table(:bettors) do
      add :name, :string
      add :bank, :integer

      timestamps()
    end
  end
end
