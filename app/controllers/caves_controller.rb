class CavesController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
    @caves = Cafe.all
  end

  def show
    @cafe = Cafe.find(params[:id])
    @review = Review.new
  end
end
