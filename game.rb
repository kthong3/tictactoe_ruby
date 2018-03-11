require_relative 'player'

class Game
  attr_accessor :board

  def initialize
    @board = []
    generate_board
  end

  def start
    display_board
  end

  def ask_for_location(player)
    puts "#{player}, please enter the number where you'd like to mark"
    response = gets.chomp
  end

  private
  def generate_board
    (1..9).each_slice(3) {|i| self.board << i}
    self.board.map! {|slice| slice.insert(1, "|").insert(3, "|").join("")}
  end

  def display_board
    puts self.board
    p self.board
  end
end

player_one = Player.new("Player One", "X")
player_two = Player.new("Player Two", "O")

players = [player_one, player_two]

game = Game.new
game.start