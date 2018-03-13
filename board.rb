require 'pry'

class Board
  attr_accessor :board, :x_locations, :o_locations
  WINNING_LOCATIONS = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], # horizontal
    [0, 3, 6], [1, 4, 7], [3, 6, 8], # vertical
    [0, 4, 8], [3, 4, 6]  # diagonal
  ]

  def initialize
    @board = []
    generate
    @x_locations = []
    @o_locations = []
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

#TODO: stop adding duplicates
  def find_x_locations
    self.board.each_with_index { |x,index| self.x_locations << index if x == "X"}
    self.x_locations.uniq!
    self.x_locations.count
  end

#TODO: stop adding duplicates
  def find_o_locations
    self.board.each_with_index { |o,index| self.o_locations << index if o == "O"}
    self.o_locations.uniq!
    self.o_locations.count
  end


  def any_matching_sets?(board_locations)
    WINNING_LOCATIONS.each do |winning_set|
      if winning_set.include?(board_locations)
        return true
      end
    end
  end

  # should automatically end if no numbers are left on the board
  def filled?
    self.board.join("").scan(/\d+/).empty?
  end

  private
  def generate
    1.upto(9) { |i| self.board << i.to_s }
  end
end