require_relative 'turn'

class Game
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1
  end

  def next_turn
    @current_player = other_player(@current_player)

    turn = Turn.new(@current_player, self)
    turn.next
  end

  def other_player(current)
    player1, player2 = @players
    if current == player1
      player2
    else
      player1
    end
  end

  def lose_life(player)
    return unless player.lose_life.zero?

    winner = other_player(player)
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    puts '----- GAME OVER -----'
    puts 'Good bye'
    exit
  end

  def status
    puts "#{@players[0].name}: #{@players[0].lives}/3 vs #{@players[1].name}: #{@players[1].lives}/3"
  end
end
