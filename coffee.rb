class Coffee 
	def initialize(coffee)
		@coffee = coffee
		# @full = true
		@name = name
		@coffee_level = 3
	end

	def name
		@name
	end

	def full?
		@coffee_level == 3
		# @full = true
	end

	def empty?
		@coffee_level.zero?
		# @full = false
	end

	def sip!
		@coffee_level = 1
	end
end