require_relative '../lib/grid'

describe Grid do  

	context "initialization" do
			let(:puzzle) {'015003002000100906270068430490002017501040380003905000900081040860070025037204600'}
			let(:grid) {Grid.new(puzzle)}
		
		it "should have 81 cells" do
			expect(grid).to have_correct_number_of_cells
			puts grid.cells.class
		end

		it "should have an unsolved first cell" do  
			expect(grid.cells.first).to eq('0')
		end

		it "should have a solved second cell with value 1" do 
			expect(grid.cells[1]).to eq('1')
		end
	end



end

# 015003002
# 000100906
# 270068430
# 490002017
# 501040380
# 003905000
# 900081040
# 860070025
# 037204600