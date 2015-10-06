require "pry"
require "set"
require "./board"
require "./GamePlay"

class HumanPlayerT3
	
	def initialize
		puts "Please enter your first name"
		@name = gets.chomp
		# puts "Please enter your letter"
		# @letter = gets.chomp
	end

	# def letter
	# 	@letter
	# end

	def name
		@name
	end
	
	def get_move
		puts "Pick a Numbered Square"
		@choice = gets.chomp.to_i
	end

end