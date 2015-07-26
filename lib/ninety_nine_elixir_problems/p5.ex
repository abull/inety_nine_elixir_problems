defmodule NinetyNineElixirProblems.P5 do
	@doc ~S"""
  Reverse a list

  ## Examplea
      iex> NinetyNineElixirProblems.P5.reverse [1,2,3,4]
      [4,3,2,1]

      iex> NinetyNineElixirProblems.P5.reverse []
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