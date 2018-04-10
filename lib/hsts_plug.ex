defmodule HSTSPlug do
  import Plug.Conn

  def init(options), do: options

  def call(conn, max_age: max_age) do
    put_resp_header(
      conn,
      "strict-transport-security",
      "max-age=#{max_age}"
    )
  end
end
