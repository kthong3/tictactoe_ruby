class Game
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
      if set.include?(number)
        location = set.index(number).to_s
        replace = set.gsub!(location, letter)
      else
        "That spot has been taken, please try again."
      end
      puts set
    end
  end

end

game = Game.new

puts "Player one, please enter the number where you'd like to mark"
number = gets.chomp
letter = "X"
game.check_location(number, letter)
