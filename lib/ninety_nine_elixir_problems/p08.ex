defmodule NinetyNineElixirProblems.P08 do 

  @moduledoc """
  Eliminate consecutive duplicate list elements.

  ## Examples
    iex> NinetyNineElixirProblems.P08.compress [1,1,1,1,2,3,3,4,4,4,5,6]
    [1,2,3,4,5,6]
  """

  def compress([e1 | [e1 | tail]]) do
    compress([e1] ++ tail)
  end

  def compress([e1 | tail]) do
    [e1] ++ compress(tail)
  end

  def compress([]) do 
    []
  end


end
