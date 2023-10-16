class Question
  def generate
    digit1 = rand(1..20)
    digit2 = rand(1..20)
    question = "What does #{digit1} plus #{digit2} equal?"
    answer = digit1 + digit2
    [question, answer]
  end
end
