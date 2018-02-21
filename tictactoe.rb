class Game
  def initialize
    @board = []
    set_up(@board)
  end

  private
  def set_up(board)
    # 1.upto(9) { |i| board << i}

    (1..9).each_slice(3) {|i| board << i}
    p board
    board.each do |set|
      set.insert
    end
  end
end

game = Game.new
