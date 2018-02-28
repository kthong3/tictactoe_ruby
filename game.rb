require_relative 'player'

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

    check_location(location)
  end

  def check_location(location)
    board_string = @board.join("")
    if !board_string.include?(location)
      puts "Sorry that location is taken. Please try again."
    end
  end

  private
  def set_up(board)
    (1..9).each_slice(3) {|i| board << i}

    board.map! {|set| set.insert(1, "|").insert(3, "|").join("")}
    p board
    puts board
  end
end

game = Game.new
player_1 = Player.new(number: "Player 1", letter: "X")
player_2 = Player.new(number: "Player 2", letter: "O")

game.prompt(player_1.number)