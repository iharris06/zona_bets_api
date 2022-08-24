defmodule ZonaBetsApi.Accounts do
  @moduledoc """
  The Accounts context.
  """

  import Ecto.Query, warn: false
  alias ZonaBetsApi.Repo

  alias ZonaBetsApi.Accounts.Bettor

  @doc """
  Returns the list of bettors.

  ## Examples

      iex> list_bettors()
      [%Bettor{}, ...]

  """
  def list_bettors do
    Repo.all(Bettor)
  end

  @doc """
  Gets a single bettor.

  Raises `Ecto.NoResultsError` if the Bettor does not exist.

  ## Examples

      iex> get_bettor!(123)
      %Bettor{}

      iex> get_bettor!(456)
      ** (Ecto.NoResultsError)

  """
  def get_bettor!(id), do: Repo.get!(Bettor, id)

  @doc """
  Creates a bettor.

  ## Examples

      iex> create_bettor(%{field: value})
      {:ok, %Bettor{}}

      iex> create_bettor(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_bettor(attrs \\ %{}) do
    %Bettor{}
    |> Bettor.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a bettor.

  ## Examples

      iex> update_bettor(bettor, %{field: new_value})
      {:ok, %Bettor{}}

      iex> update_bettor(bettor, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_bettor(%Bettor{} = bettor, attrs) do
    bettor
    |> Bettor.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a bettor.

  ## Examples

      iex> delete_bettor(bettor)
      {:ok, %Bettor{}}

      iex> delete_bettor(bettor)
      {:error, %Ecto.Changeset{}}

  """
  def delete_bettor(%Bettor{} = bettor) do
    Repo.delete(bettor)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking bettor changes.

  ## Examples

      iex> change_bettor(bettor)
      %Ecto.Changeset{data: %Bettor{}}

  """
  def change_bettor(%Bettor{} = bettor, attrs \\ %{}) do
    Bettor.changeset(bettor, attrs)
  end
end
