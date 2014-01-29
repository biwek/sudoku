# TODO - steps:
# each cells need to have a key as their number when being initialized - how?
# then get the rows, column and boxes of that cell and put it in an array called (neighbors)
# after subtracting it from (1..9) array get the candidates
# if the candidates is more than one, don't put it in the cell and take another cell number
# if contains only one candidate place the value into the cell.


class Grid

	SIZE = 81

	def initialize(puzzle)
		@cells = puzzle.chars.map.with_index{|val| Cell.new(val.to_i)}
		raise "WRONG NUMBER OF CELLS" if !has_correct_number_of_cells?
	end

	def cells
		@cells
	end

	def has_correct_number_of_cells?
		@cells.length == SIZE
	end

	def rows
		# Like most iterator methods, 
		# each_slice returns an enumerable when called without a block, 
		# which you can then call further enumerable methods on.
		@cells.each_slice(9).map{|x| p x}			# shows nested array of each rows
	end

	def columns
		rows.transpose			# shows nested array of each columns
	end


	def boxes
		small_rows = rows.map {|row| row.each_slice(3).map{|x| p x}}
		boxes = small_rows.transpose.flatten
		boxes.each_slice(9).map{|x| p x}		# shows nested array of each boxes
	end

	def calculate_neighbor(cell)
		nbor = []
		# create_rows
		rows.each do |row| 
			if row.include? cells.at(cell)
				nbor << row
			end
		end

		# create_columns
		columns.each do |column|
			if column.include? cells.at(cell)
				nbor << column
			end
		end

		# create_boxes
		boxes.each do |b|
			if b.include? cells.at(cell)
				nbor << b
			end
		end

		return nbor.flatten.map {|c| c.value}
	end



	def solved?
		# cell.filled_out?
	end

	# neighbors << related rows, column and box 

	def solve
		# outstanding_before = SIZE
		# looping = false
		# while !solved? && !looping
		# 	# cell.solve
			
		# 	# how to use cell object / neighbors

		# 	outstanding = @cells.count {|c| c.solved?}
		# 	looping = outstanding_before == outstanding
		# 	outstanding_before = outstanding
		# end



	end

end

