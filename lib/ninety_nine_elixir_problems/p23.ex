defmodule NinetyNineElixirProblems.P23 do

  @moduledoc """
     Extract a given number of randomly selected elements from a list.
    
    Example assumes default seed.
  
  ## Examples
    iex> NinetyNineElixirProblems.P23.subselect_random [3,4,5,6,7,8], 3
    [5, 7, 8]
  """

  def subselect_random(list, count) do
    random_indices(Enum.count(list), count)  |> extract_elements(list)
  end

  def random_indices(length, count) do
    length..1 |> Enum.take(count) |> Enum.map(&(:random.uniform(&1))) |> Enum.map(&(&1 - 1))
  end

  defp extract_elements([index], list) do
    [Enum.at(list, index)]
  end

  defp extract_elements([index | indices], list) do
    [Enum.at(list, index) | extract_elements(indices, List.delete_at(list, index))]
  end

end
