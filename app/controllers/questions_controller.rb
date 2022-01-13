class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == "I'm going to work!"
      # only put == here bcs this line will see if @question matches with "im going to work"
      # for the rest of the codes, it does not need == as they are just strings
      @answer = "Great!"
    elsif @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
       @answer = "I don't care, get dressed and go to work!"
    end
  end
end
