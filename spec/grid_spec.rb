require_relative '../lib/grid'

describe Grid do  

	let(:puzzle) {'015003002000100906270068430490002017501040380003905000900081040860070025037204600'}
	let(:grid) {Grid.new(puzzle)}

	context "initialization" do
		
		it "should have 81 cells" do
			expect(grid).to have_correct_number_of_cells
		end

		it "should have an unsolved first cell" do  
			expect(grid.cells.first.value).to eq(0)
		end

		it "should have a solved second cell with value 1" do 
			expect(grid.cells.at(1).value).to eq(1)
		end
	
	end


	context "solving sudoku" do 

		it "should get a row of cell 11" do 
			expect(grid.calculate_neighbors(0)).to eq([0, 1, 5, 0, 0, 3, 0, 0, 2, 0, 0, 2, 4, 5, 0, 9, 8, 0, 0, 1, 5, 0, 0, 0, 2, 7, 0])
		end

		it "can solve the puzzle" do 
			expect(grid.solve).to eq("615493872348127956279568431496832517521746389783915264952681743864379125137254698")
			
		end

	end

end
