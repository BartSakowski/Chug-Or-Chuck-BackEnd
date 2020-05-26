class BeersController < ApplicationController

  def index
    beers = Beer.all
    render json: BeerSerializer.new(beers)
  end

  def show
    beer = Beer.find(params[:id])
    render json: BeerSerializer.new(beer)
  end

  def edit
    beer = Beer.find(params[:id])
  end

  def update
    beer = Beer.find(params[:id])
       beer.update(beer_params)
       render json: beer
        # redirect_to beer_path(beer)
      # else
      #   render :edit
      # end
  end

  private

  def beer_params
    params.require(:beer).permit(:chugs, :chucks)
  end

end
