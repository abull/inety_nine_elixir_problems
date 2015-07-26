defmodule NinetyNineElixirProblems.P04 do
  @moduledoc ~S"""
  Find the number of elements in a list.

  ## Examples:
      iex> NinetyNineElixirProblems.P04.count [1,2,3,4]
      4

      iex> NinetyNineElixirProblems.P04.count []
      0
  """
  def count([]) do
    0
  end

  def count([_ | tail ]) do
    1 + count(tail)
  end
end