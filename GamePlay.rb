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

	def available_moves
		if @board.include?(pmove)
			true
		else
			false
		end
		# board.reject{ |x| x.is_a?(String) }
	end

	def take_turn
		@board.show_board
		puts "It's your turn"
		result = gets.chomp.to_i
		until available_moves(board).include?(move)
			puts "#{move} was illegal.  Choose again:  "
			move = gets.chomp.to_i
		end
		move
	end
		@playboard = Board.new
	def play
			until @playboard.win? || @playboard.gameover?
				if @playboard.current_marker == "X"
				      move = @player1.get_move(@playboard.board)
				      @playboard.moves(move)
				      @playboard.show_board
			    else
				      move = @player2.get_move
				      @board.update_board
				      @board.show_board	
				end
			end
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
