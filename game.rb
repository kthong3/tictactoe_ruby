class Game
  attr_accessor :board

  def initialize(board)
    @board = board
  end

  def start
    self.board.display
  end

  def turn(player)
    chosen_location = ask_for_location(player)
    valid_move = self.board.check_location(player, chosen_location)
    if self.add_location(player) >= 2
      p "YES"
    end
    self.board.display
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

  def add_location(player)
    if player.letter == "X"
      self.board.find_x_locations
    elsif player.letter == "O"
      self.board.find_o_locations
    end
  end

  def winner
    if self.over?
      if self.board.any_matching_sets?(self.board.x_locations)
        puts "Player One wins!"
      elsif self.board.any_matching_sets?(self.board.o_locations)
        puts "Player Two wins"
      else
        puts "It's a DRAW!"
      end
    end
  end

  def over?
    self.board.filled?
  end
end
