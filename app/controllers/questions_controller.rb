class QuestionsController < ApplicationController
  before_filter :ensure_logged_in, only: [:create, :destroy]

  def new 
    @question = Question.new
  end 

  def edit 
    @question = Question.find(params[:id])
  end

  def show
    @question = Question.find(params[:id])

    if current_user
      @answer = @question.answers.build
    end
  end

  def create
    @question = Question.new(question_params)
    @question.title.strip!

    if @question.title.length > 0
      @question.user = current_user

      if @question.save
        redirect_to edit_question_path(@question)
      else
        render 'new'
      end
    else
      redirect_to root_path
      flash[:notice] = "Question cannot be empty"
    end
  end 

  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      redirect_to @question
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])
    # if user is logged in AND user is the one who wrote the question
    if current_user && current_user == @question.user
      @question.destroy
    else
      flash[:notice] = "you cannot delete this question"
    end
    redirect_to root_path
  end 

  private
  def question_params
    params.require(:question).permit(:text, :title)
  end
end
