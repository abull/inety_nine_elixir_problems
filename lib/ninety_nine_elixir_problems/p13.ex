defmodule NinetyNineElixirProblems.P13 do

  @moduledoc """
  Implement the so-called run-length encoding data compression method directly. I.e. don't explicitly create the sublists containing the duplicates, as in problem P09, but only count them. 
  As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.

  ## Examples
    iex> NinetyNineElixirProblems.P13.direct_pack ["a","a","a","a","b","c","c","d","d","d","e","f"]
    [[4,"a"],[1,"b"],[2,"c"],[3,"d"],[1,"e"],[1,"f"]]
  """

  def direct_pack([]) do
    []
  end

  def direct_pack([item | rest]) do
    pack_rest([1, item], rest)
  end

  defp pack_rest(pair, []) do
    [pair]
  end

  defp pack_rest([count, item], [item | rest]) do
    pack_rest([count + 1, item], rest)
  end

  defp pack_rest(pair, [item | rest]) do
    [pair] ++ pack_rest([1, item], rest)
  end
end