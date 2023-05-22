class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_input = params[:user_input]
    stop_message = 'I am going to work'
    if @user_input == stop_message
      @answer = 'Great🥳'
    elsif @user_input.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!🤬😡'
    else
      @answer = "I don't care, get dressed and go to work!😤😤"
    end
  end
end
