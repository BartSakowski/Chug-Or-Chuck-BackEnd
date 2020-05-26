class BeersController < ApplicationController

  def index
    beers = Beer.all
    render json: BeerSerializer.new(beers)
  end

  def show
    beer = Beer.find(params[:id])
    render json: BeerSerializer.new(beer)
  end

end
