class ArticlesController < ApplicationController
  before_action :load_article, only: [:show]

  def index
    @articles = Article.order(:id)
  end

  def new
    @article = Article.new
  end

  def show

  end

  private

  def load_article
    @article = Article.find(params[:id])
  end
end
