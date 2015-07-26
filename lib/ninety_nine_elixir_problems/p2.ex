defmodule NinetyNineElixirProblems.P2 do
	@moduledoc ~S"""
  Find the second to last element of a list.

  ## Examples:
      iex> NinetyNineElixirProblems.P2.last_but_one [1,2,3,4]
      3

      iex> NinetyNineElixirProblems.P2.last_but_one []
      nil

      iex> NinetyNineElixirProblems.P2.last_but_one [1]
      nil
  """

  def last_but_one([]) do
     nil
  end

  def last_but_one([lastish | [_last | []]]) do
    lastish
  end

  def last_but_one([_item | tail]) do
    last_but_one(tail)
  end
end
