defmodule QueryTest do
  use ExUnit.Case
  require Ecto.Query

  doctest Backend

  test "insert data" do
    ip = "1234.56.78.9"
    user = %Backend.Users{ip: ip}
    Users.Repo.insert(user)
  end
end
