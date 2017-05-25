class Api::RestaurantsController < ApplicationController

  def index
    if params[:query] === "restaurants"
      @restaurants = Restaurant.where.not("name = 'Bi-Rite Creamery'")
    else
      @restaurants = Restaurant.where("categories ~ ?", params[:query].split.map(&:capitalize).join(' '))
    end
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
