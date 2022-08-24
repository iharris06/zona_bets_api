defmodule ZonaBetsApi.Wagers.Match do
  use Ecto.Schema
  import Ecto.Changeset

  schema "matches" do
    field :description, :string
    field :result, :string

    timestamps()
  end

  @doc false
  def changeset(match, attrs) do
    match
    |> cast(attrs, [:description, :result])
    |> validate_required([:description, :result])
  end
end
