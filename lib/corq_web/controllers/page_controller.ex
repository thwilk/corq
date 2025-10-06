defmodule CorqWeb.PageController do
  use CorqWeb, :controller

  def home(conn, _params) do
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "alice", email: "alice@gmail.com"},
      %{id: 2, name: "bob", email: "bob@gmail.com"}
    ]

    IO.puts("Hit")
    json(conn, %{users: users})
  end
end
