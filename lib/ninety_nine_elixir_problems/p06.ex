defmodule NinetyNineElixirProblems.P06 do 

  @moduledoc """
  Find out whether a list is a palindrome.

  ## Examples:
    iex> NinetyNineElixirProblems.P06.palindrome? [1,2,3,4,3,2,1]
    true

    iex> NinetyNineElixirProblems.P06.palindrome? []
    true

    iex> NinetyNineElixirProblems.P06.palindrome? [1,2,3,4,2,1]
    false

  """

  def palindrome?(list) do
    list == Enum.reverse(list)
  end

end
