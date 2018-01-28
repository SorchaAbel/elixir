use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :blog_elixir_girls, BlogElixirGirls.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :blog_elixir_girls, BlogElixirGirls.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "blog_elixir_girls_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
