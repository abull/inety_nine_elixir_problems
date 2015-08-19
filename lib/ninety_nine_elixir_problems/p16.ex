defmodule NinetyNineElixirProblems.P16 do

  @moduledoc """
  Drop every Nth element of a list.

  ## Examples
    iex> NinetyNineElixirProblems.P16.drop_every_n [1, 2, 3, 4, 5, 6, 7, 8], 3
    [1, 2, 4, 5, 7, 8]
  """

  def drop_every_n(list, n) do
    List.foldr(list, [[], n], fn 
      (item, [l, 1]) -> [l, n]
      (item, [l, k]) -> [[item | l], k - 1]
    end) |> List.first
  end

end