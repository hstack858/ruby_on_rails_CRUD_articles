class ArticlesController < ApplicationController
  def show
    byebug #pauses web server
    @article = Article.find(params[:id])
  end
end
