class Api::RestaurantsController < ApplicationController

  def index
    if params[:query] === "restaurants"
      @restaurants = Restaurant.where.not("name = 'Bi-Rite Creamery'")
    else
      query = '%' + params[:query].split.join('%') + '%'
      @restaurants = Restaurant.where("categories ILIKE :query OR name ILIKE :query", query: query)
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
