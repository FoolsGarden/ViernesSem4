class View

  def select_deck
    puts "Select Deck 1 or 2"
  end

 def show_question(question)
  puts question.question
 end

 def recibe_answer
  gets.chomp
 end

 def answer(answer)
  @correct = answer.answer
 end

 def message_correct
    puts "CORRECT!"
 end

 def message_incorrect
    puts "Incorrect"
    puts "The right answer is: #{@correct}"
 end

 def counter(counter, counter1)
    puts "You had these right #{counter1}, and these wrong: #{counter}"

 end

end