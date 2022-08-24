defmodule ZonaBetsApi.WagersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ZonaBetsApi.Wagers` context.
  """

  @doc """
  Generate a match.
  """
  def match_fixture(attrs \\ %{}) do
    {:ok, match} =
      attrs
      |> Enum.into(%{
        description: "some description",
        result: "some result"
      })
      |> ZonaBetsApi.Wagers.create_match()

    match
  end

  @doc """
  Generate a transaction.
  """
  def transaction_fixture(attrs \\ %{}) do
    {:ok, transaction} =
      attrs
      |> Enum.into(%{
        amount: 42
      })
      |> ZonaBetsApi.Wagers.create_transaction()

    transaction
  end
end
