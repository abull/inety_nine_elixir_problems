defmodule NinetyNineElixirProblems.P14 do

  @moduledoc """
  Duplicate the elements of a list.

  ## Examples
    iex> NinetyNineElixirProblems.P14.duplicate [1, 2, 3, 4, 5]
    [1, 1, 2, 2, 3, 3, 4, 4, 5, 5]
  """

  def duplicate(list) do
    Enum.flat_map(list, &([&1, &1]))
  end

end