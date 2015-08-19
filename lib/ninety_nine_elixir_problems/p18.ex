defmodule NinetyNineElixirProblems.P18 do

  @moduledoc """
  Extract a slice from a list, inclusive of both indices. (Zero index, unlike in 99 lisp problems)

  ## Examples
    iex> NinetyNineElixirProblems.P18.slice [1, 2, 3, 4, 5, 6, 7, 8], 2, 5
    [3, 4, 5, 6]
  """

  def slice(list, n, m) do
    list |> Enum.drop(n) |> Enum.take(m - n + 1)
  end

end