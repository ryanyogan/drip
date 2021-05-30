defmodule Drip.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Drip.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Drip.PubSub}
      # Start a worker by calling: Drip.Worker.start_link(arg)
      # {Drip.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Drip.Supervisor)
  end
end
