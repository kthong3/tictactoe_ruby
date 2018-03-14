class Player
  attr_reader :player_number, :letter
  attr_accessor :location_set

  def initialize(player_number, letter)
    @player_number = player_number
    @letter = letter
    @location_set = []
  end
end