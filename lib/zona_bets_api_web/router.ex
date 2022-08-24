defmodule ZonaBetsApiWeb.Router do
  use ZonaBetsApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: ZonaBetsApiWeb.Schema,
      interface: :simple,
      context: %{pubsub: ZonaBetsApiWeb.Endpoint}
  end
end
