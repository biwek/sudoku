class Grid

	DEFAULT_CELLS_LENGTH = 81

	def initialize(puzzle)
		@cells = puzzle.chars
		raise "WRONG NUMBER OF CELLS" if !has_correct_number_of_cells?
	end

	def cells
		@cells
	end

	def has_correct_number_of_cells?
		@cells.length == DEFAULT_CELLS_LENGTH
	end

	def check_column
	end

	def check_row
	end

	def check_box
	end

	def solve

	end

end