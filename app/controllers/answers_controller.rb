class AnswersController < ApplicationController
  before_filter :load_question
  before_filter :ensure_logged_in, only: [:create, :destroy]

  def show
    @answer = Answer.find(params[:id])
  end


  def create
    @answer = @question.answers.build(answer_params)
    @answer.body.strip!

    if @answer.body.length > 0
      @answer.user = current_user

      if @answer.save
        redirect_to question_path(@question.id)
      else
        render 'questions/show'
      end
    else
      flash[:notice] = "Answer cannot be empty"
      redirect_to @question
    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    if current_user && current_user == @answer.user
      @answer.destroy
    else
      flash[:notice] = "You are not allowed to delete this answer"
    end
  end 

private
  def answer_params
    params.require(:answer).permit(:body, :question_id)
  end

  def load_question
    @question = Question.find(params[:question_id])
  end

end
