class Board
  attr_accessor :board
  WINNING_LOCATIONS = [
    [1, 2, 3], [4, 5, 6], [7, 8, 9], # horizontal
    [1, 4, 7], [2, 5, 8], [3, 6, 9], # vertical
    [1, 5, 9], [3, 5, 7]  # diagonal
  ]

  def initialize
    @board = []
    generate
  end

  def display
    puts "#{self.board[0]} | #{self.board[1]} | #{self.board[2]}"
    puts "----------"
    puts "#{self.board[3]} | #{self.board[4]} | #{self.board[5]}"
    puts "----------"
    puts "#{self.board[6]} | #{self.board[7]} | #{self.board[8]}"
  end

  def check_location(player, chosen_location)
    if is_valid_location?(chosen_location)
      mark_location(player, chosen_location)
      return true
    else
      return false
    end
  end

  def mark_location(player, chosen_location)
    valid_location = self.board.index(chosen_location)
    self.board[valid_location] = player.letter
  end

  def is_valid_location?(chosen_location)
    self.board.include?(chosen_location)
  end

  private
  def generate
    1.upto(9) { |i| self.board << i.to_s }
  end

end