class Api::RestaurantsController < ApplicationController

  # def index
  #   @restaurants = restaurants
  #   render :index
  # end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

end
