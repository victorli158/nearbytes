class Api::RestaurantsController < ApplicationController

  def index
    if params[:query] && params[:query].downcase === "restaurants"
      @restaurants = Restaurant.where.not("name = 'Bi-Rite Creamery'")
    elsif params[:query] && params[:query].downcase === "cheap"
      @restaurants = Restaurant.where("price = '$'")
    elsif params[:query] === ""
      @restaurants = Restaurant.all
    elsif params[:query] && params[:query].downcase === "american"
      @restaurants = Restaurant.where("categories ILIKE '%new%' OR categories ILIKE '%traditional%'")
    elsif params[:query]
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
