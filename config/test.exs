use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :your_drip_web, YourDripWeb.Endpoint,
  http: [port: 4002],
  server: false

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :your_drip, YourDrip.Repo,
  username: "phoenix",
  password: "123456",
  database: "your_drip_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
