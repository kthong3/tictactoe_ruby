class Board
  def initialize
    @board = []
    create_board(@board)
  end

  def create_board(board)
    (1..9).each_slice(3) {|i| board << i}

    board.map! {|set| set.insert(1, "|").insert(3, "|").join("")}
    p board
    puts board
  end

  def check_location(location, board)
    board_string = board.join("")
    if !board_string.include?(location)
      puts "Sorry that location is taken. Please try again."
    end
  end
end
