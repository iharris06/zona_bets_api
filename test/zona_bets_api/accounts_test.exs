defmodule ZonaBetsApi.AccountsTest do
  use ZonaBetsApi.DataCase

  alias ZonaBetsApi.Accounts

  describe "bettors" do
    alias ZonaBetsApi.Accounts.Bettor

    import ZonaBetsApi.AccountsFixtures

    @invalid_attrs %{bank: nil, name: nil}

    test "list_bettors/0 returns all bettors" do
      bettor = bettor_fixture()
      assert Accounts.list_bettors() == [bettor]
    end

    test "get_bettor!/1 returns the bettor with given id" do
      bettor = bettor_fixture()
      assert Accounts.get_bettor!(bettor.id) == bettor
    end

    test "create_bettor/1 with valid data creates a bettor" do
      valid_attrs = %{bank: 42, name: "some name"}

      assert {:ok, %Bettor{} = bettor} = Accounts.create_bettor(valid_attrs)
      assert bettor.bank == 42
      assert bettor.name == "some name"
    end

    test "create_bettor/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_bettor(@invalid_attrs)
    end

    test "update_bettor/2 with valid data updates the bettor" do
      bettor = bettor_fixture()
      update_attrs = %{bank: 43, name: "some updated name"}

      assert {:ok, %Bettor{} = bettor} = Accounts.update_bettor(bettor, update_attrs)
      assert bettor.bank == 43
      assert bettor.name == "some updated name"
    end

    test "update_bettor/2 with invalid data returns error changeset" do
      bettor = bettor_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_bettor(bettor, @invalid_attrs)
      assert bettor == Accounts.get_bettor!(bettor.id)
    end

    test "delete_bettor/1 deletes the bettor" do
      bettor = bettor_fixture()
      assert {:ok, %Bettor{}} = Accounts.delete_bettor(bettor)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_bettor!(bettor.id) end
    end

    test "change_bettor/1 returns a bettor changeset" do
      bettor = bettor_fixture()
      assert %Ecto.Changeset{} = Accounts.change_bettor(bettor)
    end
  end
end
