defmodule Phsand.Endpoint do
  use Phoenix.Endpoint, otp_app: :phsand

  if code_reloading? do
    plug Phoenix.CodeReloader
  end

  plug Plug.RequestId
  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:json],
    pass: ["application/json"],
    json_decoder: Poison

  plug Plug.Head
  plug Phsand.Router
end
