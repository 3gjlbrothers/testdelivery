defmodule DeliveryWeb.Auth.ErrorHandler do
  alias Guardian.Plug.ErrorHandle
  alias Plug.Conn

  @behaviour ErrorHandle

  def auth_error(conn, {error, _reason}, _opts) do
    body = Jason.encode!(%{message: to_string(error)})

    Conn.send_resp(conn, 401, body)
  end
end
