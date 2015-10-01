class Human
	def initialize(name)
		@name = name
		@alertness = 0.01
		@coffee = nil
	end

	def alertness
		@alertness 
	end

	def has_coffee?
		
	end

	def needs_coffee?
		true
	end

	def buy(coffee)
		@coffee = coffee
	end

	def drink!
		@alertness += 0.3
		@coffee.sip!
	end
end
