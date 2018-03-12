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

  def move(player, letter)
    location = ask_for_location(player)
    if is_valid_location?(location)
      position = self.board.index(location)
      self.board[position] = letter
    else
      ask_for_location(player)
    end
  end

  def ask_for_location(player)
    original_board = (1..9).to_a.join("").split("")
    puts "#{player}, where do want to move? 1-9"
    response = gets.chomp
    while !original_board.include?(response)
      puts "#{player}, please choose a number from the board."
      response = gets.chomp
    end
    response
  end

  def is_valid_location?(location)
    p self.board.include?(location)
  end

  private
  def generate_board
    1.upto(9) { |i| self.board << i.to_s }
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

game.move(player_one.player_number, player_one.letter)