defmodule HSTSPlugTest do
  use ExUnit.Case

  describe "init" do
    test "passes the arguments through" do
      assert HSTSPlug.init(max_age: 45) == [max_age: 45]
    end
  end

  describe "call" do
    test "sets the transport security header" do
      conn = HSTSPlug.call(%Plug.Conn{}, max_age: 60)
      assert Enum.member?(conn.resp_headers, {"strict-transport-security", "max-age=60"})
    end
  end
end
