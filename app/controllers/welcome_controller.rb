class WelcomeController < ApplicationController
  def index
    @articles = Article.all 
  end

private
  def article_params
    params.require(:article).permit(:text, :title)
  end
end
