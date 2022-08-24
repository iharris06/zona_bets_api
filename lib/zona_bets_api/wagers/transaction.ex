defmodule ZonaBetsApi.Wagers.Transaction do
  use Ecto.Schema
  import Ecto.Changeset

  schema "transactions" do
    field :amount, :integer
    field :match_id, :id
    field :bettor_id, :id

    timestamps()
  end

  @doc false
  def changeset(transaction, attrs) do
    transaction
    |> cast(attrs, [:amount])
    |> validate_required([:amount])
  end
end
