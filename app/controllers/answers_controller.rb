class AnswersController < ApplicationController
  before_filter :load_product

  def create
    @question = Question.find(params[:question_id])
    
    @comment = @question.answers.create(answer_params)
    redirect_to question_path(@question)
  end 


  def destroy
    @question = Question.find(params[:question_id])

    @answer = @question.answers.find(params[:id])
    @answer.destroy

    redirect_to root_path

  end 

private
  def answer_params
    params.require(:answer).permit(:commenter, :body)
  end

  def load_product
    @article = Question.find(params[:question_id])
  end

end
