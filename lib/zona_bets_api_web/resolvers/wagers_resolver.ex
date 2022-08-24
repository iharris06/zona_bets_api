defmodule ZonaBetsApiWeb.Resolvers.WagersResolver do
  alias ZonaBetsApi.Wagers

  def all_transactions(_root, _args, _info) do
    {:ok, Wagers.list_transactions()}
  end
end
