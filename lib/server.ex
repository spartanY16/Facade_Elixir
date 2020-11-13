defmodule Server do
  use GenServer

  @server "-- Server"

  def start_link(state \\ "") do
    if state == "" do
      GenServer.start_link(__MODULE__, state, name: __MODULE__)
    else
      raise "Invalid input value"
    end
  end

  def init(state), do: {:ok, state}

  def startServer, do: GenServer.call(__MODULE__, :startServer)
  def stopServer, do: GenServer.call(__MODULE__, :stopServer)
  def status, do: GenServer.call(__MODULE__, :status)


  def handle_call(:startServer, _from, _state) do
    Facade.start()
    state = "Running"
    {:reply, state, state}
  end

  def handle_call(:stopServer, _from, _state) do
    Facade.stop()
    state = "Stopped"
    {:reply, state, state}
  end

  def handle_call(:status, _from, state) do
    IO.puts("#{@server} #{state}")
    {:reply, state, state}
  end

end
