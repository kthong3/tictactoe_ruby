class Board
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

  def display_board
    puts "#{self.board[0]} | #{self.board[1]} | #{self.board[2]}"
    puts "----------"
    puts "#{self.board[3]} | #{self.board[4]} | #{self.board[5]}"
    puts "----------"
    puts "#{self.board[6]} | #{self.board[7]} | #{self.board[8]}"
  end

  private
  def generate_board
    1.upto(9) { |i| self.board << i.to_s }
  end

  def move(player, letter)
    location = ask_for_location(player)
    if is_valid_location?(location)
      valid_location = self.board.index(location)
      self.board[valid_location] = letter
    else
      ask_for_location(player)
    end
  end

  def is_valid_location?(location)
    self.board.include?(location)
  end
end