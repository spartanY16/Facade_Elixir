defmodule ScheduleServer do

  def readSystemConfigFile do
    IO.puts("Reading system config files...")
    Process.sleep(5000)
    IO.puts("Config files ok")
  end

  def init do
    "Initializing"
  end

  def initializeContext do
    "Initializing context"
  end

  def destroy do
    "Destroying"
  end

  def shutdown do
    "Shutdown"
  end

end
