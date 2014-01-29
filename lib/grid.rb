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

	def create_rows
		# Like most iterator methods, 
		# each_slice returns an enumerable when called without a block, 
		# which you can then call further enumerable methods on.
		@rows = @cells.each_slice(9).map{|x| p x}			# shows nested array of each rows
	end

	def create_columns
		@column = @rows.transpose			# shows nested array of each columns
	end


	def create_boxes
		small_rows = @rows.map {|row| row.each_slice(3).map{|x| p x}}
		boxes = small_rows.transpose.flatten
		box = boxes.each_slice(9).map{|x| p x}		# shows nested array of each boxes
	end

	def solve

	end

end