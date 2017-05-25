class Api::RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.where("categories ~ ?", params[:query])
    render :index
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    render :show
  end

end
