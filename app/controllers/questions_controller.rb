class QuestionsController < ApplicationController
  def answer
    @query = params[:query]
    @answer = coach_answer_enhanced(@query)
  end

  def ask
  end

  def coach_answer(your_message)
  message = your_message.to_s
  if message.include? "?"
    return "Silly question, get dressed and go to work!"
  elsif message == "I am going to work right now!"
    return ""
  else
    return "I don't care, get dressed and go to work!"
  end
end

  def coach_answer_enhanced(your_message)
  message = your_message.to_s
  if message == "I am going to work right now!".upcase
    return ""
  elsif message == message.upcase
    return "I can feel your motivation! #{coach_answer(message)}"
  else
    return coach_answer(your_message).to_s
  end
end

end
