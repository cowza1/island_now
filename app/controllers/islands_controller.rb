class IslandsController < ApplicationController
  def index
    if params[:query].present?
      @islands = Island.search_by_name_and_location(params[:query])
    else
      @islands = Island.all
    end

  end

  def show
    @island = Island.find(params[:id])
    @markers = [
      {
        lat: @island.latitude,
        lng: @island.longitude
      }
    ]
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    @island.user = current_user
    @island.save
    redirect_to islands_path
  end

  private

  def island_params
    params.require(:island).permit(:name, :location, :mini_description, :description, :price, :photo)
  end
end
