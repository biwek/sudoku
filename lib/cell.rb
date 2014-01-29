class Cell

	# get (index)cell's value from grid
	# check that cells row and get possible values
	# check that cells column
	# check that cells box


	LIST = (1..9).to_a

	attr_accessor :value

	def initialize(value)
		# @neighbors = neighbors # array of cells
		@value = value
	end

	def candidates

	end

	def filled_out?
		self.value != 0
	end

	def solve

	
	end

end