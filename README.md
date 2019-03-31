# PhxLiveView

> A Phoenix Live View DashBoard Kickstarter. Basically a fresh Phoenix project without ecto and with live view fully setup. It also includes material-bootstrap for some dashboard theming.


## Prerequisites

You'll need to install the `mix_templates` and `mix_generator` packages by Dave Thomas

```
mix archive.install hex mix_templates
mix archive.install hex mix_generator
```

## Install

Install this template:

```
mix template.install hex gen_template_phx_live_view_dashboard
```

## Usage

Then create your project:
```
mix gen phx_live_view_dashboard MyAwesomeLiveViewProject
```

After this cd into the project directory and:
```
mix deps.get
cd assets && yarn
```

## Fire it up

```
mix phx.server
```

There is an example clock on the homepage that is implemented in `lib/your_project_web/live/clock.ex`
