defmodule ZonaBetsApi.WagersTest do
  use ZonaBetsApi.DataCase

  alias ZonaBetsApi.Wagers

  describe "matches" do
    alias ZonaBetsApi.Wagers.Match

    import ZonaBetsApi.WagersFixtures

    @invalid_attrs %{description: nil, result: nil}

    test "list_matches/0 returns all matches" do
      match = match_fixture()
      assert Wagers.list_matches() == [match]
    end

    test "get_match!/1 returns the match with given id" do
      match = match_fixture()
      assert Wagers.get_match!(match.id) == match
    end

    test "create_match/1 with valid data creates a match" do
      valid_attrs = %{description: "some description", result: "some result"}

      assert {:ok, %Match{} = match} = Wagers.create_match(valid_attrs)
      assert match.description == "some description"
      assert match.result == "some result"
    end

    test "create_match/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Wagers.create_match(@invalid_attrs)
    end

    test "update_match/2 with valid data updates the match" do
      match = match_fixture()
      update_attrs = %{description: "some updated description", result: "some updated result"}

      assert {:ok, %Match{} = match} = Wagers.update_match(match, update_attrs)
      assert match.description == "some updated description"
      assert match.result == "some updated result"
    end

    test "update_match/2 with invalid data returns error changeset" do
      match = match_fixture()
      assert {:error, %Ecto.Changeset{}} = Wagers.update_match(match, @invalid_attrs)
      assert match == Wagers.get_match!(match.id)
    end

    test "delete_match/1 deletes the match" do
      match = match_fixture()
      assert {:ok, %Match{}} = Wagers.delete_match(match)
      assert_raise Ecto.NoResultsError, fn -> Wagers.get_match!(match.id) end
    end

    test "change_match/1 returns a match changeset" do
      match = match_fixture()
      assert %Ecto.Changeset{} = Wagers.change_match(match)
    end
  end

  describe "transactions" do
    alias ZonaBetsApi.Wagers.Transaction

    import ZonaBetsApi.WagersFixtures

    @invalid_attrs %{amount: nil}

    test "list_transactions/0 returns all transactions" do
      transaction = transaction_fixture()
      assert Wagers.list_transactions() == [transaction]
    end

    test "get_transaction!/1 returns the transaction with given id" do
      transaction = transaction_fixture()
      assert Wagers.get_transaction!(transaction.id) == transaction
    end

    test "create_transaction/1 with valid data creates a transaction" do
      valid_attrs = %{amount: 42}

      assert {:ok, %Transaction{} = transaction} = Wagers.create_transaction(valid_attrs)
      assert transaction.amount == 42
    end

    test "create_transaction/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Wagers.create_transaction(@invalid_attrs)
    end

    test "update_transaction/2 with valid data updates the transaction" do
      transaction = transaction_fixture()
      update_attrs = %{amount: 43}

      assert {:ok, %Transaction{} = transaction} = Wagers.update_transaction(transaction, update_attrs)
      assert transaction.amount == 43
    end

    test "update_transaction/2 with invalid data returns error changeset" do
      transaction = transaction_fixture()
      assert {:error, %Ecto.Changeset{}} = Wagers.update_transaction(transaction, @invalid_attrs)
      assert transaction == Wagers.get_transaction!(transaction.id)
    end

    test "delete_transaction/1 deletes the transaction" do
      transaction = transaction_fixture()
      assert {:ok, %Transaction{}} = Wagers.delete_transaction(transaction)
      assert_raise Ecto.NoResultsError, fn -> Wagers.get_transaction!(transaction.id) end
    end

    test "change_transaction/1 returns a transaction changeset" do
      transaction = transaction_fixture()
      assert %Ecto.Changeset{} = Wagers.change_transaction(transaction)
    end
  end
end
