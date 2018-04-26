# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :spilth,
  ecto_repos: [Spilth.Repo]

# Configures the endpoint
config :spilth, SpilthWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WQPdNlUNHap3LkhAmg8ai628Q4YXyU9amtBJzR2orcC5epXeJ/J+5t4lE12rat2z",
  render_errors: [view: SpilthWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Spilth.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
