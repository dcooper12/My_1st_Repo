class Human
	def initialize(name)
		@name = name
		@alertness = 0.01
	end

	def alertness
		@alertness 
	end

	def has_coffee?
		@has_coffee = false
	end

	def needs_coffee?
		@alertness == 0
	end

	def buy(coffee)
		@coffee = coffee
	end

	def drink!
		@alertness += 0.3
		@coffee -= 1
	end
end
