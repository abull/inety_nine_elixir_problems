defmodule NinetyNineElixirProblems.P19 do

  @moduledoc """
  Split list into two parts.

  ## Examples
    Rotate a list by n elements.

    iex> NinetyNineElixirProblems.P19.rotate [1, 2, 3, 4, 5, 6, 7, 8], 3
    [4, 5, 6, 7, 8, 1, 2, 3]
  """

  def rotate(list, n) do
    Enum.drop(list, n) ++ Enum.take(list, n)
  end

end