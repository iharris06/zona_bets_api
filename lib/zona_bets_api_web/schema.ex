defmodule ZonaBetsApiWeb.Schema do
  use Absinthe.Schema

  alias ZonaBetsApiWeb.NewsResolver

  object :transaction do
    field :id, non_null(:id)
    field :amount, non_null(:integer)
    field :bettor_id, non_null(:id)
    field :match_id, non_null(:id)
  end

  object :match do
    field :id, non_null(:id)
    field :description, non_null(:string)
    field :result, non_null(:string)
  end

  object :bettor do
    field :id, non_null(:string)
    field :name, non_null(:string)
    field :bank, non_null(:integer)
  end

  query do
    # this is the query entry point to our app
  end
end
