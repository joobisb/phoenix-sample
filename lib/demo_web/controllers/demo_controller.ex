defmodule DemoWeb.DemoController do
  use DemoWeb, :controller

  def index(conn , _) do
    Process.sleep(65000)
    json conn, [%{test: "test"}]
  end
end