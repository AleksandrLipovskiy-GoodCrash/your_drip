# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of the Config module.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
import Config

config :your_drip_web,
  ecto_repos: [YourDripWeb.Repo],
  generators: [context_app: false]

# Configures the endpoint
config :your_drip_web, YourDripWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qTmEMIe13bu65SY01w2Du+2PTloKglP1g8s1qHL10ofOzhRL5W2tTmCMfnKNuUXB",
  render_errors: [view: YourDripWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: YourDripWeb.PubSub,
  live_view: [signing_salt: "08XirhaS"]

# Configure Mix tasks and generators
config :your_drip,
  ecto_repos: [YourDrip.Repo]

config :your_drip,
  storage_provider: YourDrip.Storage.Providers.GoogleCloudStorage.Local

# Sample configuration:
#
#     config :logger, :console,
#       level: :info,
#       format: "$date $time [$level] $metadata$message\n",
#       metadata: [:user_id]
#

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
