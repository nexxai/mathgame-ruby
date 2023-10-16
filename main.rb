require_relative 'player'
require_relative 'game'

player1 = Player.new('Annie')
player2 = Player.new('Bob')

game = Game.new(player1, player2)
game.next_turn
