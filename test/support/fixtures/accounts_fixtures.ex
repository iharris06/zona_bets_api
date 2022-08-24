defmodule ZonaBetsApi.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ZonaBetsApi.Accounts` context.
  """

  @doc """
  Generate a bettor.
  """
  def bettor_fixture(attrs \\ %{}) do
    {:ok, bettor} =
      attrs
      |> Enum.into(%{
        bank: 42,
        name: "some name"
      })
      |> ZonaBetsApi.Accounts.create_bettor()

    bettor
  end
end
