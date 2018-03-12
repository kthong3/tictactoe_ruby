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
    self.board.display
  end

  def ask_for_location(player)
    original_board = (1..9).to_a.join("").split("")
    puts "#{player.player_number}, where do want to move? 1-9"
    response = gets.chomp
    while !original_board.include?(response) || !self.board.is_valid_location?(response)
      puts "#{player.player_number}, please choose a valid number."
      response = gets.chomp
    end
    response
  end
end
