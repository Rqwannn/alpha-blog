class ArticlesController < ApplicationController
  
  def show
    # set @ agar bisa di gunakan di erb file
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

end
