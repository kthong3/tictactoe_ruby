class Board
  attr_accessor :board, :x_locations, :o_locations
  WINNING_LOCATIONS = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], # horizontal
    [0, 3, 6], [1, 4, 7], [3, 6, 8], # vertical
    [0, 4, 8], [3, 4, 6]  # diagonal
  ]

  def initialize
    @board = []
    @x_locations = []
    @o_locations = []
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

  def find_x_locations
    self.board.each_with_index { |x,index| self.x_locations << index if x == "X"}
  end

  def find_o_locations
    self.board.each_with_index { |o,index| self.o_locations << index if o == "O"}
  end

  # should be called only if there are 2 or more in location array
  def any_matching_sets?(board_locations)
    WINNING_LOCATIONS.each do |winning_set|
      return true if winning_set == board_locations
    end
  end

  def winner?

  end

  private
  def generate
    1.upto(9) { |i| self.board << i.to_s }
  end
end