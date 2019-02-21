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
      {:bolt_sips, "~> 1.2.0-rc2"}
    ]
  end
end
