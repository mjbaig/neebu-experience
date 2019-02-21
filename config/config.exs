# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :bolt_sips, Bolt,
  hostname: 'localhost',
  basic_auth: [
    username: System.get_env("NEO_USER"),
    password: System.get_env("NEO_PASSWORD")
    ],
  port: System.get_env("NEO_PORT"),
  pool_size: 5,
  max_overflow: 1
