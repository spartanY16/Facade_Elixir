defmodule FacadeTest do
  use ExUnit.Case
  doctest Facade

  test "Module to cover the start function of the facade" do
    Server.start_link()
    Server.startServer()
    Server.status()
  end

  test "Module to cover the stop function of the facade" do
    Server.start_link()
    Server.stopServer()
  end

  test "Module to cover the start_link with invalid input value" do
    Server.start_link("garbage")
  end

end
