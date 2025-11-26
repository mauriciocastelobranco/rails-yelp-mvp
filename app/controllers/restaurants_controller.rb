class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant, notice: "Restaurant was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    # AQUI ESTÁ A MÁGICA:
    # 1. require(:restaurant) -> exige que os dados venham dentro da chave 'restaurant'
    # 2. permit(:name, :address, ...) -> lista APENAS os campos que podem ser salvos
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
