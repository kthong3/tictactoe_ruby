class Player
  attr_reader :number
  def initialize(args={})
    @number = args[:number]
    @letter = args[:letter]
  end
end