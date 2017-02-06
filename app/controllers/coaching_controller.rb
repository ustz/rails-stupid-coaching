class CoachingController < ApplicationController
  def coach_answer(your_message)
    if @query.include?("?")
        "Silly question, get dressed and go to work!"
      elsif @query == "I am going to work right now!"
        ""
      else
        "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == "I AM GOING TO WORK RIGHT NOW!"
      return ""
    elsif your_message == your_message.upcase
      return "I can feel your motivation! #{coach_answer(your_message)}"
    else coach_answer(your_message)
      end
  end

  def answer
    @query = params[:query]
    @response = coach_answer_enhanced(@query)
  end

  def ask
  end
end
