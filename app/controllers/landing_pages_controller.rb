class LandingPagesController < ApplicationController
  def index
    @owner = Owner.order("RANDOM()").limit(1).first
    @article = Article.order("RANDOM()").limit(1).first
  end
end
