defmodule NeebuExperience.Routes do

  use Plug.Router

  plug(:match)

  plug(:dispatch)

  plug(Plug.Logger)

  get("/", do: default_response(conn))

  get(_, do: default_response(conn))

  defp default_response(conn) do
    conn
    |> put_resp_content_type("application/json","utf-8")
    |> send_resp(200, Poison.encode!(%{:route_world => "WHO ARE YOU PEOPLE?"}))
    |> halt()
  end

end
