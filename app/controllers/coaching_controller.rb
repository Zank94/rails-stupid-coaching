class CoachingController < ApplicationController
  def answer
    @your_message = params[:query]
    if @your_message == ("I am going to work right now!" || "I AM GOING TO WORK RIGHT NOW!")
      coach_answer = ""
    elsif @your_message[-1] == "?"
      coach_answer = "Silly question, get dressed and go to work!"
    else
      coach_answer = "I don't care, get dressed and go to work!"
    end
    if @your_message == @your_message.upcase
      @final_coach_answer = "I can feel your motivation! #{coach_answer}"
    else
      @final_coach_answer = coach_answer
    end
  end

  def ask
  end
end
