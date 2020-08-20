defmodule HelloWorld.FileReaderTest do
  use ExUnit.Case
  import Mock

  test "Passing a file give a string" do
    str = HelloWorld.FileReader.get_strings_to_tweet(Path.join("#{:code.priv_dir(:hello_world)}", "sample.txt"))

    assert str != nil
  end

  test "Will not return string too long" do
    str = HelloWorld.FileReader.get_strings_to_tweet(Path.join("#{:code.priv_dir(:hello_world)}", "/test/to_long.txt"))

    assert str == "Short Line"
  end

  test "String are trimmed" do
    with_mock File, [read!: fn(_) -> " ABC " end] do
      str = HelloWorld.FileReader.get_strings_to_tweet("not exist")

      assert str == "ABC"
    end
  end

end
