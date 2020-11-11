defmodule Facade do
  use GenServer

  def handle_call(:startServer, _from, state), do: Server.start(state)

  def handle_call(:stopServer, _from, state), do: Server.stop(state)

  def start_link(state \\ []) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  def startServer, do: GenServer.call(__MODULE__, :startServer)
  def stopServer, do: GenServer.call(__MODULE__, :stopServer)

  def init(state), do: {:ok, state}

end
