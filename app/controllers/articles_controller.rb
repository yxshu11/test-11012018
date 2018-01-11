class ArticlesController < ApplicationController
  before_action :find_owner, only: [:index]
  before_action :find_owners_article, only: [:index]
  before_action :find_article, only: [:show]

  def index
  end

  def show
  end

  private

  def find_owner
    @owner = Owner.friendly.find(params[:owner_id])
  end

  def find_owners_article
    @articles = @owner.articles
  end

  def find_article
    @article = Article.find(params[:id])
  end
end
