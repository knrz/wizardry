defmodule Wizardry.Mixfile do
  use Mix.Project

  def project do
    [app: :wizardry,
     description: "Simple, low-level user account framework for Phoenix Framework",
     version: "0.0.2",
     elixir: "~> 1.0",
     package: package,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def package do
    [licenses: ["MIT"],
     maintainers: ["Kash Nouroozi"],
     links: %{"Github" => "https://github.com/knrz/wizardry"}]
  end


  def application do
    [applications: [:logger, :comeonin]]
  end

  defp deps do
    [{:plug, "~> 1.2"},
     {:comeonin, "~> 2.5"},
     {:ex_doc, "~> 0.12", only: :dev}]
  end
end
