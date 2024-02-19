class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @coach_answer = "nil"
    @answer = []
    if params[:answer] == "I am going to work"
      return @coach_answer = "Great !"
    elsif params[:answer].include?("?")
      return @coach_answer = "Silly question, get dressed and go to work!"
    elsif params[:answer]
      return @coach_answer = " I don't care, get dressed and go to work!"
    end
  end
end
