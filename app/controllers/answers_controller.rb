class AnswersController < ApplicationController
  before_filter :load_question
  before_filter :ensure_logged_in, only: [:create, :destroy]

  def show
    @answer = Answer.find(params[:id])
  end

  def create
    @answer = @question.answers.build(answer_params)
    @answer.user = current_user

    if @answer.save
      redirect_to @question, notice: "Review created"
    else
      render 'questions/show'
    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
  end 

private
  def answer_params
    params.require(:answer).permit(:commenter, :body, :question_id)
  end

  def load_question
    @question = Question.find(params[:question_id])
  end

end
