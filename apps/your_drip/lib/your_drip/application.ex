defmodule YourDrip.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      YourDrip.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: YourDrip.PubSub}
      # Start a worker by calling: YourDrip.Worker.start_link(arg)
      # {YourDrip.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: YourDrip.Supervisor)
  end
end
