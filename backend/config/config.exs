import Config

config :backend, ecto_repos: [Users.Repo]

config :backend, Users.Repo,
  env: Config.config_env(),
  database: "",
  username: "",
  password: "",
  hostname: ""
