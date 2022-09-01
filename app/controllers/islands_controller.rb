class IslandsController < ApplicationController
  def index
    @islands = Island.all
  end

  def show
    @island = Island.find(params[:id])
    @markers = [
      {
        lat: @island.latitude,
        lng: @island.longitude
      }]
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    @island.user = current_user
    @island.save
  end

  private

  def island_params
    params.require(:island).permit(:name, :location, :mini_description, :description, :price, :photo)
  end
end
