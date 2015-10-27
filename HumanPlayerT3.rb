require "pry"
require "./board"
require "./GamePlay"

class HumanPlayerT3
	
	def initialize(letter)
		puts
		puts "Welcome to my Kick-Ass Tic Tac Toe game"
		puts
		puts "Please enter your first name"
		puts
		@name = gets.chomp.upcase
		@letter = letter
	end

	def letter
		@letter
	end

	def name
		@name
	end
	
	def player_move
		puts
		puts "#{name} Pick a Numbered Square"
		gets.chomp.to_i
	end

end