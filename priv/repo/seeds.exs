# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ZonaBetsApi.Repo.insert!(%ZonaBetsApi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias ZonaBetsApi.Wagers.Transaction
alias ZonaBetsApi.Wagers.Match
alias ZonaBetsApi.Accounts.Bettor
alias ZonaBetsApi.Repo

%Match{description: "Diamond Backs @ Yankees", result: "TBD"} |> Repo.insert!
%Bettor{name: "IanTest", bank: 10} |> Repo.insert!
%Transaction{amount: 10, match_id: 1, bettor_id: 1} |> Repo.insert!
