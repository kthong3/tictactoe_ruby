class Game
  def initialize
    @board = []
    set_up(@board)
  end

  def prompt(player)
    puts "#{player}, please select the location by typing a number."
    location = gets.chomp

    if location.scan(/\d+/).empty?
      puts "Please select the location by typing a number."
      location = gets.chomp
    end


  end

  def is_location_taken?(location)

  end

  private
  def set_up(board)
    (1..9).each_slice(3) {|i| board << i}

    board.map! {|set| set.insert(1, "|").insert(3, "|").join("")}
    p board
    puts board
  end
end

class Player
  def initialize(args={})
    @player_number = args[:player_number]
    @letter = args[:letter]
  end
end

game = Game.new
player_1 = Player.new(player_number: "1", letter: "X")
player_2 = Player.new(player_number: "2", letter: "O")

puts "Please select the location by typing a number."
response = gets.chomp

if response.scan(/\d+/).empty?
  puts "Please select the location by typing a number."
  response = gets.chomp
end
