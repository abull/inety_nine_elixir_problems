defmodule NinetyNineElixirProblems.P3 do 
  @moduledoc ~S"""
  Find the nth element of a list.

  ## Examples:
      iex> NinetyNineElixirProblems.P3.nth [1,2,3,4], 2
      3

      iex> NinetyNineElixirProblems.P3.nth  [1, 2, 3, 4], 5
      nil
  """

  def nth([], _) do
    nil
  end

  def nth([item | _tail], 0) do
    item
  end

  def nth([_item | tail], n) do
    nth(tail, n - 1)
  end
end