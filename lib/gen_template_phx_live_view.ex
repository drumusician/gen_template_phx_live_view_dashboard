defmodule Mix.Gen.Template.PhxLiveViewDashboard do

  @moduledoc File.read!(Path.join([__DIR__, "../README.md"]))

  use MixTemplates,
    name:       :phx_live_view_dashboard,
    short_desc: "Template for Phoenix Live View Dashboard",
    source_dir: "../template",
    based_on: :phx_live_view

  def clean_up(assigns) do
    app_css = Path.expand("#{assigns.target_subdir}/assets/css/phoenix.css")
    phoenix_css = Path.expand("#{assigns.target_subdir}/assets/css/app.css")
    File.rm(app_css)
    File.rm(phoenix_css)
  end
end
