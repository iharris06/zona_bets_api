defmodule ZonaBetsApi.Repo.Migrations.CreateMatches do
  use Ecto.Migration

  def change do
    create table(:matches) do
      add :description, :string
      add :result, :string

      timestamps()
    end
  end
end
