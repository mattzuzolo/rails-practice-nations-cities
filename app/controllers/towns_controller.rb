class TownsController < ApplicationController

  def index
    @towns = Town.all
  end

  def show
    @town = Town.find(params[:id])
  end

  def new
    @town = Town.new()
  end

  def edit
    @town = Town.find(params[:id])
  end

  def create
    @town = Town.new(town_params)
    @town.save
    redirect_to @town
  end

  def update
      @town = Town.find(params[:id])
      @town.update(town_params)
      redirect_to @town
  end

  def destroy
  end

  private

  def town_params
    params.require(:town).permit(:name, :country, :native_language_english, :nation_id)
  end
end
