class AnswersController < ApplicationController
  before_filter :load_product

  # def create
  #   @question = Question.find(params[:question_id])
    
  #   @comment = @question.answers.create(answer_params)
  #   redirect_to question_path(@question)
  # end 

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
    @answer = Question.find(params[:id])
    @answer.destroy
  end 

private
  def answer_params
    params.require(:answer).permit(:commenter, :body, :question_id)
  end

  def load_product
    @question = Question.find(params[:question_id])
  end

end
