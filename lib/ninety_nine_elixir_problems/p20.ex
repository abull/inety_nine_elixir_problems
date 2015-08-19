defmodule NinetyNineElixirProblems.P20 do

  @moduledoc """
    Remove the kth element of a list. (This is a library function)

  ## Examples
    iex> NinetyNineElixirProblems.P20.drop_kth [1, 2, 3, 4, 5, 6, 7, 8], 3
    [1, 2, 3, 5, 6, 7, 8]
  """

  def drop_kth(list, n) do
    Enum.take(list, n) ++  Enum.drop(list, n + 1)
  end

end