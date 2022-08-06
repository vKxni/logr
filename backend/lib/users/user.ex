defmodule Backend.Users do
  use Ecto.Schema

  def changeset(user, params \\ %{}) do
    user
    |> Ecto.Changeset.cast(params, [:ip])
    |> Ecto.Changeset.validate_required([:ip])
  #  |> Ecto.Changeset.unique_constraint(:ip, name: :users_ip_index, message: "Alr. saved this")
  end

  schema "users" do
    field(:ip, :string)
  end
end
