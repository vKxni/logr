defmodule Backend.MixProject do
  use Mix.Project

  def project do
    [
      app: :backend,
      version: "0.1.0",
      description: "The Logr backend, in Elixir",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Backend.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # api fetching
      {:httpoison, "~> 1.8"},
      {:poison, "~> 5.0"},
      {:jason, "~> 1.3"},

      # http reqs
      {:plug, "~> 1.13"},
      {:plug_cowboy, "~> 2.5"},

      # cors
      {:corsica, "~> 1.2"},
    #  {:cors_plug, "~> 3.0.3"},

      # database
      {:ecto_sql, "~> 3.0"},
      {:postgrex, ">= 0.0.0"},

      # rate limits
      #  {:hammer, "~> 6.0"},
      #  {:hammer_plug, "~> 2.1"}

      # config
      {:dotenv_parser, "~> 2.0"}
    ]
  end
end
