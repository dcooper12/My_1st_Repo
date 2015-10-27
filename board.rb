require "pry"
require "./HumanPlayerT3"
require "./GamePlay"

class Board
	
	def initialize
		@win_set = [[0, 1, 2], [0, 3, 6], [0, 4, 8],
		   			[1, 4, 7], [2, 4, 6], [2, 5, 8],
		 		    [3, 4 ,5], [6, 7, 8]]
		
		@board = (1..9).to_a
		
	end
	
	def show_board
		board = @board
		puts "
     #{board[0]} | #{board[1]} | #{board[2]}
     #{board[3]} | #{board[4]} | #{board[5]}
     #{board[6]} | #{board[7]} | #{board[8]}
  "
	end
	
	def board
		@board
	end

	def update_board(move, letter)
		@board[move -1] = letter
	end
		
	def win?
		@win_set.any? do |x, y, z|
			@board[x] == @board[y] && @board[y] == @board[z]
		end
	end
	
	def draw?
		legal_moves.empty?
	end

	def legal_moves
		@board.reject { |x| x.is_a?(String) }
	end

	def game_over?
		self.win? || self.draw?
	end

end