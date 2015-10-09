require "pry"
require "set"
require "./board"
require "./HumanPlayerT3"
require "./GamePlay"

	
def greeting
	puts
	puts "Welcome to my Kick-Ass Tic Tac Toe game"
	puts
end
greeting
game = GamePlay.new
game.play




