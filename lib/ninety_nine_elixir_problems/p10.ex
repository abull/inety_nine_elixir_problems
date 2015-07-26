defmodule NinetyNineElixirProblems.P10 do 
 import NinetyNineElixirProblems.P09

  @moduledoc """
  Use the result of problem 9 to implement the run-length encoding data compression method. 
  Consecutive duplicates of elements are encoded as lists [N E] where N is the number of duplicates of the element E.

  ## Examples
    iex> NinetyNineElixirProblems.P10.compress ["a","a","a","a","b","c","c","d","d","d","e","f"]
    [[4,"a"],[1,"b"],[2,"c"],[3,"d"],[1,"e"],[1,"f"]]
  """

  def compress(list) do
    list |> pack |> compress_sublists
  end

  defp compress_sublists([]) do
    []
  end

  defp compress_sublists([head | tail]) do
    [compress_sublist(head) | compress_sublists(tail)]
  end

  defp compress_sublist(list) do
    [length(list) | [hd(list) | []]]
  end

end
