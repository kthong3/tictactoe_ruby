class Game
  attr_accessor :board

  WINNING_LOCATIONS = [
    [1, 2, 3], [4, 5, 6], [7, 8, 9], # horizontal
    [1, 4, 7], [2, 5, 8], [3, 6, 9], # vertical
    [1, 5, 9], [3, 5, 7]  # diagonal
  ]

  def initialize(board)
    @board = board
  end

  def start
    self.board.display_board
  end

  def turn(player, letter)
    move(player, letter)
    self.board.display_board
  end

  private
  def move(player, letter)
    location = ask_for_location(player)
    if is_valid_location?(location)
      valid_location = self.board.index(location)
      self.board[valid_location] = letter
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
end
