class Game
  attr_accessor :board, :winner_was_found

  def initialize(board)
    @board = board
    @winner_was_found = false
  end

  def start(players)
    puts "Starting 2 Player Tic Tac Toe game..."
    self.board.display
    puts " "
    self.play(players)
  end

  def play(players)
    until self.over?
      players.each do |player|
        self.turn(player)
        if self.did_win?(player)
          self.declare_winner(player)
          break
        end
      end
      if self.board.filled?
        puts "It's a 🐱  Game!"
      end
    end
  end

  def turn(player)
    if !self.board.filled?
      chosen_location = ask_for_location(player)
      self.board.location_taken?(player, chosen_location)
      self.board.add_position(player)
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

  def did_win?(player)
    self.winner_was_found = self.board.any_matching_sets?(player)
  end

  def declare_winner(player)
    if self.over?
      if self.board.any_matching_sets?(player)
        puts "#{player.player_number} wins!"
      end
    end
  end

  # automatically end if board is filled
  def over?
    self.winner_was_found || self.board.filled?
  end
end