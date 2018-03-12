require_relative 'player'

class Game
  attr_accessor :board

  WINNING_LOCATIONS = [
    [1, 2, 3], [4, 5, 6], [7, 8, 9], # horizontal
    [1, 4, 7], [2, 5, 8], [3, 6, 9], # vertical
    [1, 5, 9], [3, 5, 7]  # diagonal
  ]

  def initialize
    @board = []
    generate_board
  end

  def start
    display_board
  end

  def ask_for_location(player)
    puts "#{player}, where do want to move? 0-9"
    response = gets.chomp

  end

  private
  def generate_board
    self.board = (1..9).to_a.join("").split("")
  end

  def display_board
    puts "#{board[0]} | #{board[1]} | #{board[2]}"
    puts "----------"
    puts "#{board[3]} | #{board[4]} | #{board[5]}"
    puts "----------"
    puts "#{board[6]} | #{board[7]} | #{board[8]}"
  end
end

player_one = Player.new("Player One", "X")
player_two = Player.new("Player Two", "O")

players = [player_one, player_two]

game = Game.new
game.start
