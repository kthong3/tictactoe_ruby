class Player
  attr_reader :player_number

  def initialize(player_number, letter)
    @player_number = player_number
    @letter = letter
  end
end