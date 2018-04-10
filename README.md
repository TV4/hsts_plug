# HSTSPlug

A plug for setting HSTS header.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `hsts_plug` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:hsts_plug, "~> 0.1.0"}
  ]
end
```

## Usage

In your Phoenix application's endpoint add the following to set the header to `60` seconds:

```elixir
plug(HSTSPlug, max_age: 60)
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/hsts_plug](https://hexdocs.pm/hsts_plug).
