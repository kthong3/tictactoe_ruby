class Game
  def initialize(args={})
    @size = args.fetch(:size, 3)
    @board = build(@size)
  end

  def start

  end

  def build(board_size)

  end

  def display_board
  end
end