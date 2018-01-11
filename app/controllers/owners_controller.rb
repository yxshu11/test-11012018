class OwnersController < ApplicationController
  before_action :find_owner, only: [:show]

  def index
    @owners = Owner.all
  end

  def show
  end

  private

  def find_owner
    @owner = Owner.friendly.find(params[:id])
  end
end
