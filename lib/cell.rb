class Cell


	LIST = (1..9).to_a

	attr_accessor :value

	def initialize(value)
		@value = value
	end
	

	def filled_out?
		value != 0
	end

end