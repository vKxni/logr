import Config

DotenvParser.load_file(".env")

config :backend, ecto_repos: [Users.Repo]

config :backend, Users.Repo,
  env: Config.config_env(),
  database: System.fetch_env!("DATABASE_DATABASE"),
  username: System.fetch_env!("DATABASE_USERNAME"),
  password: System.fetch_env!("DATABASE_PASSWORD"),
  hostname: System.fetch_env!("DATABASE_HOSTNAME")
