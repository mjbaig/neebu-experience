defmodule NeebuExperience.MixProject do
  use Mix.Project

  def project do
    [
      app: :neebu_experience,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :bolt_sips],
      mod: {App, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:bolt_sips, "~> 1.2.1-rc2"},
      {:poison, "~> 3.1"},
      {:plug_cowboy, "~> 2.0.1"},
      {:plug, "~> 1.4"},
      {:argon2_elixir, "~> 1.2"},
      {:comeonin, "~> 4.0"},
      {:authtoken, "~> 0.2"},
    ]
  end
end
