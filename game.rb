class Game
  attr_accessor :board

  def initialize(board)
    @board = board
  end

  def start
    puts "Starting 2 player Tic Tac Toe game..."
    self.board.display
  end

  def turn(player)
    if !self.board.filled?
      chosen_location = ask_for_location(player)
      self.board.location_taken?(player, chosen_location)
      if count_location(player) >= 3
        check_for_winner(player)
      end
      self.board.display
      puts " "
    end
  end

  def ask_for_location(player)
    original_board = (1..9).to_a.join("").split("")
    puts "#{player.player_number}, where do want to move? 1-9"
    response = gets.chomp

    while !original_board.include?(response) || !self.board.is_valid_location?(response)
      puts "#{player.player_number}, please choose a valid number."
      self.board.display
      response = gets.chomp
    end
    response
  end

  def count_location(player)
    if player.letter == "X"
      self.board.find_x_locations
    elsif player.letter == "O"
      self.board.find_o_locations
    end
  end

  def check_for_winner(player)
    if player.letter == "X"
      self.board.any_matching_sets?(self.board.x_locations)
      p self.board.x_locations
    else
      self.board.any_matching_sets?(self.board.o_locations)
      p self.board.o_locations
    end
  end

  # def winner(player)
  #   if over?
  #     if self.board.any_matching_sets?(self.board.x_locations)
  #       puts "Player One wins!"
  #     elsif self.board.any_matching_sets?(self.board.o_locations)
  #       puts "Player Two wins"
  #     else
  #       puts "It's a DRAW!"
  #     end
  #   end
  # end

  def over?
    self.board.filled?
  end
end
