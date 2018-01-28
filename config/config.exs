# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :blog_elixir_girls,
  ecto_repos: [BlogElixirGirls.Repo]

# Configures the endpoint
config :blog_elixir_girls, BlogElixirGirls.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Zb6/a/rlxLSWSkLs59aGmnHUQn3vb+j0Y0JTSAJf9IAHwjH3omgo0ywV2lLMDW0+",
  render_errors: [view: BlogElixirGirls.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BlogElixirGirls.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
