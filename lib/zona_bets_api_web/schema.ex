defmodule ZonaBetsApiWeb.Schema do
  use Absinthe.Schema

  alias ZonaBetsApiWeb.Resolvers.WagersResolver

  @desc "A wager transaction"
  object :transaction do
    field :id, non_null(:id)
    field :amount, non_null(:integer)
    field :bettor_id, non_null(:id)
    field :match_id, non_null(:id)
  end

  @desc "An event that can be wagered upon"
  object :match do
    field :id, non_null(:id)
    field :description, non_null(:string)
    field :result, non_null(:string)
  end

  @desc "A bettor account"
  object :bettor do
    field :id, non_null(:string)
    field :name, non_null(:string)
    field :bank, non_null(:integer)
  end

  query do
    @desc "Get all transactions"
    field :all_transactions, non_null(list_of(non_null(:transaction))) do
      resolve(&WagersResolver.all_transactions/3)
    end
  end
end
