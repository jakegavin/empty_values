defmodule EmptyValues.Router do
  use EmptyValues.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", EmptyValues do
    pipe_through :api
  end
end
