defmodule CorqWeb.PageController do
  use CorqWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
