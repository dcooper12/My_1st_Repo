require "pry"
require "./HumanPlayer"
require "./RandomPlayer"
require "./CountingPlayer"
require "./Smart"

class GuessingGame
  def initialize(player)
    @player = player
  end

  def play
    number = rand(1..100)
    result = nil
    last_result = nil
    guess = @player.get_guess(result, last_result)
    count = 1
    until guess == number
      if guess > number
        result = :high
        puts "Too High!"
      else
        result = :low
        puts "Too Low!"
      end
      last_result = guess
      guess = @player.get_guess(result, last_result)
      count += 1
    end
    puts "You win! Took #{count} tries. The number was #{number}."
  end
end

game = GuessingGame.new(Smart.new)

game.play

puts "just screwing around"