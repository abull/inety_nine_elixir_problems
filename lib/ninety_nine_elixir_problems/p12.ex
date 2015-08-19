defmodule NinetyNineElixirProblems.P12 do 
  import NinetyNineElixirProblems.P09

  @moduledoc """

  ## Examples
    Given a run-length code list generated as specified in problem P11. Construct its uncompressed version.


    iex> NinetyNineElixirProblems.P12.decompress [[4,"a"],"b",[2,"c"],[3,"d"],"e","f"]
    ["a","a","a","a","b","c","c","d","d","d","e","f"]
  """

  def decompress(list) do
    Enum.flat_map(list, &unpack/1)
  end

  defp unpack([count, item]) do
    Stream.repeatedly(fn -> item end) |> Enum.take count
  end

  defp unpack(item) do
    [item]
  end
end
