class CoachingController < ApplicationController
  def coach_answer(your_message)
      if your_message.include? "?"
        return "Silly question, get dressed and go to work!"
      elsif your_message == "I am going to work right now!"
        return "You're amazing! Keep it going."
      else
        return "I don't care, get dressed and go to work!"
      end
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(params[:question])
  end

  def ask
  end
end
