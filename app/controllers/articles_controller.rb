class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      flash[:notice] = "Article was successfully created."
      redirect_to articles_path
    else
      render :action => :new
    end
  end

  def show
    @article = Article.find_by_id(params[:id])

  end

  def edit

  end

  def update

  end

  def destroy

  end

private
  def article_params
    params.require(:article).permit(:title, :content)
  end

end