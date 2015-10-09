puts "Guess a number between 0 and 30"
n = rand(0...100)
guess = gets.chomp.to_i


until guess == n
	if guess < n
		puts "That's too low"
	elsif guess > n
		puts "That's too high"
	end
puts "guess again"
guess = gets.chomp.to_i
end

puts "Congratulations"

