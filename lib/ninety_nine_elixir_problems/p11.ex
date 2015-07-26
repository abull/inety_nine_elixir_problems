defmodule NinetyNineElixirProblems.P11 do 
  import NinetyNineElixirProblems.P09

  @moduledoc """

  ## Examples
    Modify the result of problem P10 in such a way that if an element has no duplicates it is simply copied into the result list. 
    Only elements with duplicates are transferred as [N E] lists.


    iex> NinetyNineElixirProblems.P11.compress ["a","a","a","a","b","c","c","d","d","d","e","f"]
    [[4,"a"],"b",[2,"c"],[3,"d"],"e","f"]
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

  defp compress_sublist([item | []]) do
    item
  end

  defp compress_sublist(list) do
    [length(list) | [hd(list) | []]]
  end

end
