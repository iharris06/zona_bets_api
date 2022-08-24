defmodule ZonaBetsApi.Repo do
  use Ecto.Repo,
    otp_app: :zona_bets_api,
    adapter: Ecto.Adapters.Postgres
end
