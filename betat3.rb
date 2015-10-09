require 'pry'
require 'set'

board = (1..9).to_a

WIN_SET = [[0, 1, 2], [3, 4 ,5], [6, 7, 8], 
		   [0, 3, 6], [1, 4, 7], [2, 5, 8], 
		   [0, 4, 8], [2, 4, 6]]

MARKER1 = "X"
MARKER2 = "O"


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
	# show_board(board)
	puts "Hey #{current_player} it's your turn"
	puts "Pick a numbered box"
	# results = gets.chomp.to_i
	gets.chomp.to_i
end

def gameover?(p1moves, p2moves)
  p1moves.length + p2moves.length == 9 
end

def win?(board)
  WINSET.any? do |x|
    # board[x] == board[y] && board[y] == board[z]
    x.to_set.subset?(p1moves.to_set) || x.to_set.subset?(p2moves.to_set)
  end
end
	
def update_board(board, pick, current_marker)
	board[pick -1] = current_marker
	
end

def switch(current_player, player1, player2)
  if current_player == player1
		current_player = player2
		current_moves = p2moves
		current_marker = MARKER2
		previous_player = player1
	else current_player = player1
		current_moves = p1moves
		current_marker	= MARKER1
		previous_player = player2		
	end
  end
  

def tic_tac_toe(board)
	board = (1..9).to_a
	greeting
	player1 = get_name("Player 1")
	player2 = get_name("Player 2")
	update_board(board)
	current_player = player1
	previous_player = player2
	p1moves = []
	p2moves = []
	current_moves = p1moves
	current_marker = MARKER1
	switch(current_player, player1, player2)
	pick = prompt(current_player)
	current_moves.push(pick)
	update_board(board, pick, current_player)
	show_board(board)
	
if win?(p1moves, p2moves, current_player)
	puts "Congrats, #{previous_player} you win!"
else
	puts "Cat Game is a Draw"
	end
end

tic_tac_toe(board)



