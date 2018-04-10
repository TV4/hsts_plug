defmodule HSTSPlug.MixProject do
  use Mix.Project

  def project do
    [
      app: :hsts_plug,
      version: "1.0.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:plug, ">= 1.5.0"}
    ]
  end
end
