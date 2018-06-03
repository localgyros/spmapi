# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :spmapi,
  ecto_repos: [Spmapi.Repo]

# Configure PidFile
config :pid_file, file: "./spmapi.pid"

# Configures the endpoint
config :spmapi, SpmapiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qIPbYVopz187R+knjNo6idNbwxnDJNfMtQ0Ol0/RV1W7u/lg5ODf819vEh2E5R9S",
  render_errors: [view: SpmapiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Spmapi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
