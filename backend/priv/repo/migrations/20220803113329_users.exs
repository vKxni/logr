defmodule Users.Repo.Migrations.Users do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :ip, :string
    end

    create unique_index(:users, [:ip])
  end
end
