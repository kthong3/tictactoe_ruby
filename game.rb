require_relative 'board'
require_relative 'player'

class Game
  def initialize
    set_up
  end

  def prompt(player)
    puts "#{player}, please select the location by typing a number."
    location = gets.chomp

    if location.scan(/\d+/).empty?
      puts "Please select the location by typing a number."
      location = gets.chomp
    end

    check_location(location)
  end

  private
  def set_up
    board = Board.new
  end
end

game = Game.new
player_1 = Player.new(number: "Player 1", letter: "X")
player_2 = Player.new(number: "Player 2", letter: "O")

game.prompt(player_1.number)