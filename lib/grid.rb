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
		# Like most iterator methods, each_slice returns 
		# an enumerable when called without a block, 
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

	def calculate_neighbors(cell)
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

		return @neighbor = nbor.flatten.map {|c| c.value}
	end


	def solved?
		cells.all? {|cell| cell.filled_out?}
	end


	def solve
		loop do 
			cells.map.with_index do |c, i| 
					calculate_neighbors(i)
					candidate = (1..9).to_a - @neighbor
					if candidate.length == 1 && cells.at(i).value == 0
						cells.at(i).value = candidate.join.to_i
					end					
			end
			break if solved?
		end
		return @cells.map {|cell| cell.value}.join
	end

end

