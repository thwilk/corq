defmodule Corq.Repo do
  use Ecto.Repo,
    otp_app: :corq,
    adapter: Ecto.Adapters.Postgres
end
