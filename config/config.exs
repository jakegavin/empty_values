# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :empty_values,
  ecto_repos: [EmptyValues.Repo]

# Configures the endpoint
config :empty_values, EmptyValues.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NsrczLxysV2hYcqGrK9FUnDFr5nh1pua1FeK+54JIAmfAaFbXcztYoZRk3uf0G3H",
  render_errors: [view: EmptyValues.ErrorView, accepts: ~w(json)],
  pubsub: [name: EmptyValues.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
