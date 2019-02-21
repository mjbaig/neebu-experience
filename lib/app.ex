defmodule App do

  use Application

  def start(_type, _args) do

    IO.inspect(Application.get_env(:bolt_sips, Bolt))

  end

end
