defmodule PhxLiveViewDashboard.Mixfile do
  use Mix.Project

  @name    :gen_template_phx_live_view_dashboard
  @version "0.1.0"

  @deps [
    { :mix_templates,  ">0.0.0",  app: false },
    { :ex_doc,         ">0.0.0",  only: [:dev, :test] },
  ]

  @maintainers ["Tjaco Oostdijk <info@drumusician.com>"]
  @github      "https://github.com/drumusician/#{@name}"

  @description """
  A boilerplate Phoenix Live View Dashboard
  """

  # ------------------------------------------------------------

  def project do
    in_production = Mix.env == :prod
    [
      app:     @name,
      version: @version,
      deps:    @deps,
      elixir:  "~> 1.8",
      package: package(),
      description:     @description,
      build_embedded:  in_production,
      start_permanent: in_production,
    ]
  end

  defp package do
    [
      name:        @name,
      files:       ["lib", "mix.exs", "README.md", "LICENSE.md", "template"],
      maintainers: @maintainers,
      licenses:    ["MIT"],
      links:       %{
        "GitHub" => @github,
      },
#      extra:       %{ "type" => "a_template_for_mix_gen" },
    ]
  end

end
