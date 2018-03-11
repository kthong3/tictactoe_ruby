require_relative 'player'

class Game
  attr_accessor :board

  def initialize
    @board = []
    generate_board
    @players = []
    create_players(@players)
  end

  def start
    display_board
  end

  def create_players(players)
    players << Player.new("Player One", "X")
    players << Player.new("Player Two", "O")
    p players
  end

  def over
  end

  private
  def generate_board
    (1..9).each_slice(3) {|i| self.board << i}
    self.board.map! {|slice| slice.insert(1, "|").insert(3, "|").join("")}
  end

  def display_board
    puts self.board
  end

  def prompt_player
  end
end

game = Game.new
game.start