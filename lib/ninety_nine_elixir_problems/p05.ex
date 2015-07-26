defmodule NinetyNineElixirProblems.P05 do
  @moduledoc ~S"""
  Reverse a list

  ## Examples:
      iex> NinetyNineElixirProblems.P05.reverse [1,2,3,4]
      [4,3,2,1]

      iex> NinetyNineElixirProblems.P05.reverse []
      []
  """
  def reverse([]) do
    []
  end

  def reverse([item]) do
    [item]
  end

  def reverse([head | tail]) do
    reverse(tail) ++ [head]
  end
end