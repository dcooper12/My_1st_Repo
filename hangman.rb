require "pry"
require "set"

word_list = [
  "chicken", "duck", "dog", "cat", "clown",
  "brick", "bananas", "totalitarianism",
  "coffee", "metacircular", "interpreter",
  "wednesday", "ruby", "evaluation", "consternation",
  "chicanery"
]

MAX_TURNS = 6
answer = word_list.sample

def greeting
  puts "Welcome to the game of Hangman!\n\n"
  puts "I'm not even gonna explain it."
  puts "Just guess letters dummy."
end

def get_input(prompt)
  puts prompt
  gets.chomp
end

def get_name(player)
  puts "Enter the name of #{player}"
  gets.chomp
end

def game_over?(answer, guesses)
  turns_left(guesses, answer).zero? || win?(answer, guesses)
end

def show_progress(partial_word, answer, guesses, current_player)
  turns_remaining = turns_left(guesses, answer)
  puts "Hey its your turn #{current_player}"
  puts "The current word is: #{partial_word}"
  puts "You have #{turns_remaining} guesses left."
end

def prompt_player
  puts
  puts "Please guess a letter: "
  letter = gets.chomp
  until ('a'..'z').to_a.include?(letter)
    puts "#{letter} is not a single lowercase letter, guess again: "
    letter = gets.chomp
  end
  letter
end


def make_partial(guesses, answer)
  answer.chars.map do |letter|
    if guesses.include?(letter)
      letter
    else
      "-"
    end
  end
end

def take_turn(guesses, answer, current_player)
  partial_word = make_partial(guesses, answer).join
  show_progress(partial_word, answer, guesses, current_player)
  prompt_player
end

def win?(answer, guesses)
  answer_set = answer.chars.to_set
    guesses >= answer_set
  end


def switch(current_player, player_one, player_two)
  if current_player == player_one
    current_player = player_two
  elsif current_player == player_two
    current_player = player_one
  end
  current_player
end

def postmortem(answer, guesses, current_player)
  if win?(answer, guesses)
    puts "Nice work! #{current_player}, You win, The word is #{answer}."
  else
    puts "The word was #{answer}. Better luck next time."
  end
end

def turns_left(guesses, answer)
  answer_set = answer.chars.to_set
  wrong_guesses = (guesses - answer_set).count
  MAX_TURNS - wrong_guesses
end
  
def hangman(answer)
  guesses = Set.new
  # p1_guess = Set.new
  # p2_guess = Set.new
  # g1 = Set.new
  # g2 = Set.new
  greeting
  player_one = get_name("Player 1")
  player_two = get_name("Player 2")
  current_player = player_one
  until game_over?(answer, guesses)
    guess = take_turn(guesses, answer, current_player)
    guesses.add(guess)
    current_player = switch(current_player, player_one, player_two)
  end
  current_player = switch(current_player, player_one, player_two)
  postmortem(answer, guesses, current_player)
end

def play_again?
  puts "Wanna play again? (y/n)"
  gets.chomp
end

def play_hangman(words)
  answer = words.sample
  hangman(answer)
end

def play(words)
  play_hangman(words)
  choice = play_again?
  until choice == "n"
    play_hangman(words)
    choice = play_again?
  end
end
  
play(word_list)