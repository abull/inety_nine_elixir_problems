defmodule NinetyNineElixirProblems.P17 do

  @moduledoc """
  Split list into two parts.

  ## Examples
    iex> NinetyNineElixirProblems.P17.split [1, 2, 3, 4, 5, 6, 7, 8], 3
    [[1, 2, 3], [4, 5, 6, 7, 8]]
  """

  def split(list, n) do
    [Enum.take(list, n), Enum.drop(list, n)]
  end

end