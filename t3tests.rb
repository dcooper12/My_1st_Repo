require "minitest/autorun"
require "pry"

require "./board"
require "./HumanPlayerT3"
require "./GamePlay"

class BoardTests < MiniTest::Test

	def setup
		@board = Board.new
	end

	def test_board_array
		assert_equal([1,2,3,4,5,6,7,8,9], @board.board)
	end

	def test_update_board_works
		@board.update_board(5, "X")
		assert_equal([1,2,3,4,"X",6,7,8,9], @board.board)
	end

	def test_can_player_win?
	    refute @board.win?
	    @board.update_board(1,"X")
	    @board.update_board(2,"X")
	    @board.update_board(3,"X")
	    assert @board.win?
	  end

	 def test_can_game_draw?
	  	@board.update_board(1,"X")
	    @board.update_board(2,"X")
	    @board.update_board(3,"O")
	    @board.update_board(4,"O")
	    @board.update_board(5,"X")
	    @board.update_board(6,"X")
	    @board.update_board(7,"X")
	    @board.update_board(8,"O")
	    @board.update_board(9,"O")
	    assert @board.draw?
	 end

	 

end

