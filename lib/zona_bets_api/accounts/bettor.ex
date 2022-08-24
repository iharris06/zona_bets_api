defmodule ZonaBetsApi.Accounts.Bettor do
  use Ecto.Schema
  import Ecto.Changeset

  schema "bettors" do
    field :bank, :integer
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(bettor, attrs) do
    bettor
    |> cast(attrs, [:name, :bank])
    |> validate_required([:name, :bank])
  end
end
