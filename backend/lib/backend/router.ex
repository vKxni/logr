defmodule Backend.Router do
  use Plug.Router
  require Ecto.Query

  # alias Backend.API

  plug(:match)
  plug(:dispatch)
  plug(Backend.Endpoint)

  # get "/" do
  #   send_resp(conn, 200, "Nothing here")
  # end

  @moduledoc """
  Once the route is called, we fetch the API for the users IP address.
  If not saved yet, we save it in the database.
  """
  @base_url "https://api.ipify.org"

  get "/ping" do
    response = Backend.Base.get!(@base_url)
    send_resp(conn, 200, response.body)

    user = %Backend.Users{ip: response.body}
    Users.Repo.insert(user)
  end
end
