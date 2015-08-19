defmodule NinetyNineElixirProblems.P21 do

  @moduledoc """
     Insert an element at a given position into a list. (This is a library function)

  ## Examples
    iex> NinetyNineElixirProblems.P21.insert_kth 10, [1, 2, 3, 4, 5, 6, 7, 8], 3
    [1, 2, 3, 10, 5, 6, 7, 8]
  """

  def insert_kth(elem, list, n) do
    Enum.take(list, n) ++ [elem] ++  Enum.drop(list, n + 1)
  end

end