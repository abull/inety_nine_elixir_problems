defmodule NinetyNineElixirProblems.P15 do

  @moduledoc """
  Replicate the elements of a list N times.

  ## Examples
    iex> NinetyNineElixirProblems.P15.replicate [1, 2, 3, 4, 5], 3
    [1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5]
  """

  def replicate(list, n) do
    Enum.flat_map(list, &(List.duplicate(&1, n)))
  end
end