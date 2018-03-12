require_relative 'game'
require_relative 'board'
require_relative 'player'

player_one = Player.new("Player One", "X")
player_two = Player.new("Player Two", "O")

players = [player_one, player_two]

board = Board.new
game = Game.new(board)
game.start

# players.each do |player|
#   game.turn(player.player_number, player.letter)
# end