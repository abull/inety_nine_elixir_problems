defmodule NinetyNineElixirProblems.P7 do 

	@moduledoc """
	Flatten a nested list.

	## Examples
    iex> NinetyNineElixirProblems.P7.flatten [1,[2,3,4],5,[6,[7]]]
    [1,2,3,4,5,6,7]
	"""

	def flatten([]) do
		[]
	end

	def flatten([head | tail]) when is_list(head)  do
    flatten(head ++ tail)
	end


	def flatten([head | tail]) do
		[head] ++ flatten(tail)
	end

end
