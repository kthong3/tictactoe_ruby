class Game
  attr_accessor :board

  def initialize
    @board = []
    set_up(@board)
    @player_one = "Player one"
    @player_two = "Player two"
    @player_one_letter = "X"
    @player_two_letter = "O"
  end

  # create board
  def set_up(board)
    split_range = (1..9).to_a.each_slice(3) {|set| board << set }

    board.map! do |set|
      set.join("").insert(1, "|").insert(3, "|")
    end

    board.insert(1, "_____").insert(3, "_____")
  end

  def prompt(player, player_letter)
    puts "#{player}, please enter the number where you'd like to mark"
    player_response = gets.chomp

    game.check_location(player_response, player_letter)
    game.pretty_print
  end

  def check_location(number, letter)
    num_str = number.to_s
    if @board.join("").include?(num_str)
      @board.each do |set|
        if set.include?(num_str)
          mark_location(set, num_str, letter)
        end
      end
    else
      puts "That location has been taken, please try again."
    end
  end

  def mark_location(set, num_str, letter)
    location = set.index(num_str)
    set[location] = letter
  end

  def pretty_print
    @board.each do |set|
      puts set
    end
  end
end

game = Game.new

game.pretty_print

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
