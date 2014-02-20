class PlacesController < ApplicationController
  def new 
    @place = Place.new
  end
  
  def create
    place = current_user.places.build(place_params)
    if place.save
      redirect_to dashboard_path
    else
      flash.alert = "Could not add your place."
      redirect_to dashboard_path
    end
  end
  
  def show
    @place = Place.find(params[:id])
  end
  
  private
  def place_params
    params.require(:place).permit(:address, :description, :eta, :rent_per_month, :bedrooms, :available, :additional, :student)
  end
end