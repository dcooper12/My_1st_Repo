
class Smart
	def initialize
		@count = 50
		end

	def get_guess(result, last_result)
		guess = 50
		number = rand(1..100)
		until guess == number
			#TODO  the guess should not include numbers too high or too low
			#TODO  then numbers should only be in that range, then loop until
			if result == :high
				guess = rand(1...last_result)
			else result == :low
				guess = rand((last_result > 1) ..100)	
			end
			
				guess
		end

	end

end


