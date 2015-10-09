
class Smart
	def initialize
		@guess = 50
		@min = 1
		@max = 100
		end

	def get_guess(last_result)
		# guess = 50
		# number = rand(1..100)
		# until guess == number
			#TODO  the guess should not include numbers too high or too low
			#TODO  then numbers should only be in that range, then loop until
			if last_result == :low
				@min = @guess
				@guess = (@min + @max) / 2
				# guess = rand(1..last_result)
			else 
				last_result == :high
				@max = @guess
				@guess = (@min + @max) / 2
				# guess = rand(last_result..100)	
			
		end	
	end
end


