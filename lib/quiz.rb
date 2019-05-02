class Quiz

  def question
    puts "What is the capital of France?"
  end

  def answer(input = gets.chomp.upcase)
    if input == "PARIS"
      puts "correct"
    else
      puts "incorrect"
    end
  end
end

quiz = Quiz.new()
puts quiz.question
quiz.answer
