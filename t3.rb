require 'pry'

board = (1..9).to_a
winning_array = [[0, 1, 2], [3, 4 ,5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
# def show_board(board)
#   3.times do |row|
#     3.times do |column|
#       print "#{board[row*3 + column]} "
#     end
#     puts
#   end
# end

# map, all?, any?

def show_board(board)
  puts "
     #{board[0]} | #{board[1]} | #{board[2]}
     #{board[3]} | #{board[4]} | #{board[5]}
     #{board[6]} | #{board[7]} | #{board[8]}
  "
end

def get_name(player)
  puts "Please enter #{player} name "
  gets.chomp
end

def greeting
	puts "Welcome to Tic Tac Toe"
	puts "Are you ready to play?"
end

def prompt(board, current_player)
	show_board(board)
	puts "Hey #{current_player} it's your turn"
	puts "Pick a numbered box"
end

# def playing(board)

# 	if turn -= 1 board.include?
	 	
# 	 end 
	
# end

def tic_tac_toe(board)
	greeting
	player1 = get_name("Player 1")
	player2 = get_name("Player 2")
	current_player = player1
	prompt(board,current_player)
	puts "make your move x"
	choice = gets.chomp.to_i - 1
	board[choice] = "x"
	show_board(board)
end


tic_tac_toe(board)



