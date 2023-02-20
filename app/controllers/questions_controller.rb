class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:question]
    @answers = ""

    if @questions.include?("I am going to work")
      @answers = "Great!"
    elsif @questions.end_with?("?")
      @answers = "Silly question, get dressed and go to work!"
    else
      @answers = "I don't care, get dressed and go to work!"
    end
  end
end
