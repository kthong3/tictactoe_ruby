class Game
  def initialize
    @board = []
    generate_board
  end

  def generate_board
    (1..9).each_slice(3) {|i| @board << i}
    @board.map! {|slice| slice.insert(1, "|").insert(3, "|").join("")}
  end

  def display_board
    puts @board
  end
end

game = Game.new
game.display_board