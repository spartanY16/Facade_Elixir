defmodule Facade do

  def start() do
    ScheduleServer.readSystemConfigFile
    ScheduleServer.init
    ScheduleServer.initializeContext
    nil
  end

  def stop() do
    ScheduleServer.destroy
    ScheduleServer.shutdown
    nil
  end

end
