defmodule Backend.Endpoint do
  use Plug.Builder
  Plug.Head

  plug Corsica,
    max_age: 600,
    origins: "*",
    allow_headers: ["accept", "content-type", "authorization"],
    allow_methods: ["GET", "POST"],
    allow_credentials: true,
    log: [rejected: :error, invalid: :warn, accepted: :debug]
end
