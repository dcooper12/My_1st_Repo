require './HumanPlayerT3'
require './board'


class GamePlay
	def initialize
		@win_set = [[0, 1, 2], [0, 3, 6], [0, 4, 8],
		   			[1, 4, 7], [2, 4, 6], [2, 5, 8],
		 		    [3, 4 ,5], [6, 7, 8]]
		# @p1marker = "X"
		# @p2marker = "O"
		@player1 = HumanPlayerT3.new
		@player2 = HumanPlayerT3.new
		@current_player = nil
		@board = Board.new
		@p1guesses = []
		@p2guesses = []
		@playboard = nil

	end

	# def switch_player
	# 	if player == "X"
	# 		player = "O"
	# 	else
	# 		player = "X"
	# 	end
		
	def win?
		@win_set.any? do |x, y, z|
			x.to_set.subset?(@p1guesses.to_set) || x.to_set.subset?(@p2guesses.to_set)
			# @board[x] == @board[y] && @board[y] == @board[z]
		end
	end
	
	def game_over?
		# @playboard.win? || @board.draw?
		@p1guesses.length + @p2guesses.length == 9
	end


	
	

end
