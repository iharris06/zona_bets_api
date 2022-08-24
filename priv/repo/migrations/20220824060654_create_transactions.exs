defmodule ZonaBetsApi.Repo.Migrations.CreateTransactions do
  use Ecto.Migration

  def change do
    create table(:transactions) do
      add :amount, :integer
      add :match_id, references(:matches, on_delete: :nothing)
      add :bettor_id, references(:bettors, on_delete: :nothing)

      timestamps()
    end

    create index(:transactions, [:match_id])
    create index(:transactions, [:bettor_id])
  end
end
