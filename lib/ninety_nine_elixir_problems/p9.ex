defmodule NinetyNineElixirProblems.P9 do 

	@moduledoc """
	Pack consecutive duplicates of list elements into sublists.

	## Examples
    iex> NinetyNineElixirProblems.P9.pack [1,1,1,1,2,3,3,4,4,4,5,6]
    [[1,1,1,1],[2],[3,3],[4,4,4],[5],[6]]
	"""

	def pack([[e1 | tail1] | [e1 | tail2]]) do
		pack([[e1 | [e1 | tail1]] | tail2])
	end

	def pack([e1 | [ e1 | tail]]) do
		pack([[e1, e1] | tail])
	end

	def pack([e1 | tail]) when is_list(e1) do
		[e1 | pack(tail)]
	end

	def pack([e1 | tail]) do
		[[e1] | pack(tail)]
	end

	def pack([]) do 
		[]
	end


end
