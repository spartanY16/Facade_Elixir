defmodule ScheduleServer do

  def readSystemConfigFile do
    IO.puts("Reading system config files...")
    Process.sleep(5000)
    IO.puts("Config files ok")
  end

  def init do
    IO.puts("Initializing")
  end

  def initializeContext do
    IO.puts("Initializing context")
  end

  def destroy do
    IO.puts("Destroying")
  end

  def shutdown do
    IO.puts("Shutdown")
  end

end
