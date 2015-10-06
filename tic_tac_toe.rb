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


# def tic_tac_toe
# 	puts "Get ready to play a Kick-Ass game of Tic Tac Toe"
# 	puts "Player 1 will GO first"
# 	puts "Player 1 is 'X', and Player 2 is 'O'"
# 	player1 = HumanPlayerT3.new
# 	player2 = HumanPlayerT3.new
# 	current_player = player1
# 	board = Board.new
# 	puts
# 	puts "Player 1, Pick a numbered square!"
# 	until false
# 		board.show_board
# 		move = current_player.get_move
# 		letter = current_player.letter
# 		board.update_board(move, letter)
# 		if current_player == player1
# 			current_player = player2
# 		elsif current_player == player2
# 			current_player = player1		
# 		end
# 	end
# end

# tic_tac_toe
	



	 # Neeb to display board.
	###   Option to play 2 players or vs. computer (AI)
	# 1.  Two players.  This will be a class.
	# 2.  AI for one player mode.  This will be a class.

=begin
	###   
	# 1. ^^ Players to use 'MARKER X' and use 'MARKER O'
	# 2.  Players will alternate turns until game over.
	# 3.  Board will update with current 'MARKER' after every move.
	# 4.  Player wins by picking three numbers in the 'WIN_SET' before draw
	# 5.  Game is a Draw when neither player wins and all choices on board 
	#     have 'X' or 'O'.
	# 6.  Game over with win or draw
	# 7.  Ask players "Do you wanna play again?"
=end
