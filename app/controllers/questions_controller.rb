class QuestionsController < ApplicationController
  def ask; end

  def answer
    @answer = params['answer']

    @coach_answer = "I don't care, get dressed and go to work!"
    @coach_answer = 'Great!' if @answer == 'I am going to work'
    @coach_answer = 'Silly question, get dressed and go to work!' if @answer.end_with?('?')
  end
end
