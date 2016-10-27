class QuizzesController < ApplicationController
  def show
    @quiz = Quiz.find(params[:id])
    @questions = Question.where(quiz_id: @quiz.id)
  end
end
