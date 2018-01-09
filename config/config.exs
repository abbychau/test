# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :cqerl, 
  cassandra_nodes: [{"52.230.85.143", 9042},{"52.230.85.143", 9042}],#, {"10.0.0.2", 9042}
  keyspace: "keyspace"

# General application configuration
#config :velcron,
#  ecto_repos: [Velcron.Repo]

# Configures the endpoint
config :velcron, VelcronWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "A05VxrtuZFMlJhGXSlLxWmQbGmkK7tl+FPCRGaYKBw/y5Y7QoLdT9vuYXUGbFDoJ",
  render_errors: [view: VelcronWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Velcron.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
