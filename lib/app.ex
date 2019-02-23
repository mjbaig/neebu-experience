defmodule App do

  use Application

  require Logger

  @spec start(any(), any()) :: any()
  def start(_type, _args) do

    Logger.info("Starting Application")

    opts = [strategy: :one_for_one, name: NeebuExperienceSupervisor]

    Supervisor.start_link(children(), opts)

  end

  def children do
    [
      Plug.Adapters.Cowboy.child_spec(scheme: :http, plug: NeebuExperience.Routes, options: [port: 8080])
    ]
  end

end
