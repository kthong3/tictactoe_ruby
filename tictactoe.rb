class Game
  attr_accessor :board

  def initialize
    @board = []
    set_up(@board)
  end

  # create board
  def set_up(board)
    split_range = (1..9).to_a.each_slice(3) {|set| board << set }

    board.map! do |set|
      set.join("").insert(1, "|").insert(3, "|")
    end

    board.insert(1, "_____").insert(3, "_____")

    board.each do |set|
      puts set
    end
  end

  def check_location(number, letter)
    @board.each do |set|
      if set.include?(number.to_s)
        location = set.index(number.to_s)
        set[location] = letter
      else
        "That spot has been taken, please try again."
      end
    end
  end

  def pretty_print
    @board.each do |set|
      puts set
    end
  end
end

game = Game.new

puts "Player one, please enter the number where you'd like to mark"
player_one_num = gets.chomp
player_one_letter = "X"

game.check_location(player_one_num, player_one_letter)
game.pretty_print

puts "Player two, please enter the number where you'd like to mark"
player_two_num = gets.chomp
player_two_letter = "O"

game.check_location(player_two_num, player_two_letter)
game.pretty_print

p game.board