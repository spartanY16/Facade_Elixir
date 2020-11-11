defmodule Server do

  def start(state) do
    ScheduleServer.readSystemConfigFile
    ScheduleServer.init
    ScheduleServer.initializeContext
    state = "started"
  end

  def stop(state) do
    ScheduleServer.destroy
    ScheduleServer.shutdown
    state = "stopped"
  end

end
