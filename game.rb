class Game
  attr_accessor :board

  def initialize
    @board = []
    generate_board
  end

  def start
    display_board
  end

  private
  def generate_board
    (1..9).each_slice(3) {|i| self.board << i}
    self.board.map! {|slice| slice.insert(1, "|").insert(3, "|").join("")}
  end

  def display_board
    puts self.board
  end
end

game = Game.new
game.start