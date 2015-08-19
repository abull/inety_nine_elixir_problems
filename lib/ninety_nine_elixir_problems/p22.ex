defmodule NinetyNineElixirProblems.P22 do

  @moduledoc """
     Create a list containing all integers within a given range.

  ## Examples
    iex> NinetyNineElixirProblems.P22.range 3, 7
    [3, 4, 5, 6, 7]
  """

  def range(s, s) do
    [s]
  end

  def range(s, e) when e > s do
    :error
  end

  def range(s, e) do
    [start | range(s+1, e)]
  end

end