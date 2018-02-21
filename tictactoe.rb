class Game
  def initialize
    @board = []
    set_up(@board)
  end

  private
  def set_up(board)
    (1..9).each_slice(3) {|i| board << i}

    board.each do |set|
      set.insert(1, "|").insert(3, "|")
    end

    board.map! {|set| set.join("")}
    p board
    puts board
  end
end

game = Game.new
