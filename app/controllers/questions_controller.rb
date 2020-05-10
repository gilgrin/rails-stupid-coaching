class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @q = params[:question] ? params[:question] : ""

    if @q[-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif @q.downcase == 'i am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
