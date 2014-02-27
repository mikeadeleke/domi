class PlacesController < ApplicationController
  def index
    @places = Place.order("created_at DESC").limit(5)
  end
  
  def new 
    @place = Place.new
  end
  
  def create
    place = current_user.places.build(place_params)
    if place.save
      redirect_to places_path
    else
      flash.alert = "Could not add your place."
      render :new
    end
  end
  
  def show
    @place = Place.find(params[:id])
  end
  
  private
  def place_params
    params.require(:place).permit(:address, :description, :eta, :rent_per_month, :bedrooms, :available, :additional, :student, :photo)
  end
end