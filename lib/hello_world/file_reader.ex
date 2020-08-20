defmodule HelloWorld.FileReader do
  @doc """
  This function takes the path to a file and return a random string from it.

  iex> HelloWorld.FileReader.get_strings_to_tweet("priv/test/doc.txt")
  "ABC"

  iex> HelloWorld.FileReader.get_strings_to_tweet("priv/test/too_long.txt")
  "Short Line"
  """


  def get_strings_to_tweet(path) do
    File.read!(path)
    |> pick_string
  end

  def pick_string(str) do
    str
    |> String.split("\r\n")
    |> Enum.map(&String.trim/1)
    |> Enum.filter(&String.length(&1) <= 140)
    |> Enum.filter(fn(x) -> x != "" end)
    |> Enum.random()
  end
end
