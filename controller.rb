require_relative "model.rb"
require_relative "view.rb"

class Controller

  def initialize
    @model = Record.new
    @view = View.new
    @view.select_deck
    inpunt = gets.chomp.to_i
    if inpunt == 1
      @quizz = @model.csv_reader
    else
      @quizz = @model.csv_reader_2
    end
    begin_game
  end

  def begin_game

  x = 0
  y = 0
  counter_bad = 0
  counter_good = 0
    
    while x < 10
      @quizz 
      question = @view.show_question(@quizz[x])
      user_answer = @view.recibe_answer
      answer = @view.answer(@quizz[y])
      if user_answer == answer
        @view.message_correct
        counter_good += 1
      else
        @view.message_incorrect
        counter_bad += 1
      end
      puts "*" * 50
  x += 1
  y += 1
    end
    @view.counter(counter_bad, counter_good)
  end

end

Controller.new