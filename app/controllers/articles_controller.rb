class ArticlesController < ApplicationController
  
  def detail
    # set @ agar bisa di gunakan di erb file
    @article = Article.find(params[:id])
  end

end
