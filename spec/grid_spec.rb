require_relative '../lib/grid'

describe Grid do  

	context "initialization" do
			let(:puzzle) {'015003002000100906270068430490002017501040380003905000900081040860070025037204600'}
			let(:grid) {Grid.new(puzzle)}
		
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
		let(:puzzle) {'015003002000100906270068430490002017501040380003905000900081040860070025037204600'}
		let(:grid) {Grid.new(puzzle)}

		it "should get a row of cell 11" do 
			expect(grid.calculate_neighbor(0)).to eq([0, 1, 5, 0, 0, 3, 0, 0, 2, 0, 0, 2, 4, 5, 0, 9, 8, 0, 0, 1, 5, 0, 0, 0, 2, 7, 0])
		end

		it "can solve the puzzle" do 
			
		end

	end

end
# 6	
# 015003002
# 000100906
# 270068430
# 490002017
# 501040380
# 003905000
# 900081040
# 860070025
# 037204600