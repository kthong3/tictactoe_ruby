require_relative 'game'
require_relative 'board'
require_relative 'player'

player_one = Player.new("Player Unicorn", "🦄")
player_two = Player.new("Player Poo", "💩")
players = [player_one, player_two]

board = Board.new
game = Game.new(board)
game.start

until game.over?
  players.each do |player|
    game.turn(player)
    if game.did_win?(player)
      game.declare_winner(player)
      break
    end
  end
  if game.board.filled?
    puts "It's a 🐱  Game!"
  end
end
