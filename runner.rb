require_relative 'game'
require_relative 'board'
require_relative 'player'

player_one = Player.new("Player Unicorn", "🦄")
player_two = Player.new("Player Poo", "💩")
players = [player_one, player_two]

board = Board.new
game = Game.new(board)
game.start(players)
