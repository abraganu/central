defmodule CentralPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :central_phoenix,
    adapter: Ecto.Adapters.Postgres
end
