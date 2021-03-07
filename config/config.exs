# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :central_phoenix,
  ecto_repos: [CentralPhoenix.Repo]

# Configures the endpoint
config :central_phoenix, CentralPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TuyXCUtdTvGnjf56Xa1rwXlu3InorVxkTBX5J8WJuv0RAZ3ZAG1WOh9zqRe9GanB",
  render_errors: [view: CentralPhoenixWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: CentralPhoenix.PubSub,
  live_view: [signing_salt: "SpzlmpHq"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
