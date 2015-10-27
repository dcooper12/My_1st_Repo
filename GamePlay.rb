require "pry"
require './HumanPlayerT3'
require './board'


class GamePlay
	def initialize
		@win_set = [[0, 1, 2], [0, 3, 6], [0, 4, 8],
		   			[1, 4, 7], [2, 4, 6], [2, 5, 8],
		 		    [3, 4 ,5], [6, 7, 8]]
		
		@player1 = HumanPlayerT3.new("X")
		@player2 = HumanPlayerT3.new("O")
		@board = Board.new
		@current_player = @player1
	end

	def switch_player
		if @current_player == @player1
			@current_player = @player2
		else
			@current_player = @player1
		end
	end

	def take_turn
		@board.show_board
		move = @current_player.player_move
		letter = @current_player.letter
		until @board.legal_moves.include?(move)
			puts "That move is not legal, Try another numbered box "
    		move = @current_player.player_move
		end
		@board.update_board(move, letter)
	end

	def post_mortem
		if @board.win?
			puts "Congrats, you win!"
		elsif
			@board.draw?
			puts "Cat's Game, Neither one of you idiots won!"
		end
	end

	def play
		until @board.game_over? do
			take_turn
			switch_player
		end
		post_mortem	
		@board.show_board
		replay
	end

	def replay
		@board.show_board
		puts "Do you want to play again? Y or N "
		answer = gets.chomp.upcase
		if answer == "Y"
			game = GamePlay.new
			game.play
		else
			puts "Game Over Chump"
		end
	end	
end
