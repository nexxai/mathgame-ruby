require_relative 'question'

class Turn
  def initialize(player, game)
    new_question = Question.new
    @question, @answer = new_question.generate
    @player = player
    @game = game
  end

  def next
    puts "#{@player.name}: #{@question}"
    response = gets.chomp

    if response == @answer.to_s
      puts "#{@player.name}: YES! You are correct"
    else
      puts "#{@player.name}: Seriously? No!"
      @game.lose_life(@player)
    end

    @game.status
    @game.next_turn
  end
end
