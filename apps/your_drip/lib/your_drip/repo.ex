defmodule YourDrip.Repo do
  use Ecto.Repo,
    otp_app: :your_drip,
    adapter: Ecto.Adapters.Postgres
end
