class ArticlesController < ApplicationController

  # agar method set_article bisa di gunakan di method yang di izinkan
  # sebelum code di dalam method yang di izinkan berjalan
  # method set_article akan di jalankan terlebih dahulu
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  
  def show
    # @article = Article.find(params[:id]) => akan ada code seperti ini jika menggunakan before_action with method set_article
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    # render plain: params[:article] sama kaya fungsi dd() di laravel
    # name yang di izinkan hanya :title, :description untuk di masukan ke db

    @article = Article.new(article_params)

    if @article.save
       flash[:notice] = "Article was created successfully" # ngarah ke show.html di article
       redirect_to @article # akan mengambil id dari article
    else
       render :new, status: :unprocessable_entity
    end
    
    # render plain: @article.inspect 
  end

  def edit
  end

  def update
    if @article.update(article_params)
      flash[:notice] = "Article was updated successfully"
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article.destroy

    flash[:notice] = "Article was updated successfully"
    redirect_to articles_path
  end

  # Supaya tidak dry

  private

  def set_article
    # set @ agar bisa di gunakan di erb file
    @article = Article.find(params[:id])
  end

  def article_params
    # agar baris code di bawah bisa di masukan di parameter crud article
    params.require(:article).permit(:title, :description)
  end

end
