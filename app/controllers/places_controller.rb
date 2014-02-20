class PlacesController < ApplicationController
  def create
    place = current_user.places.build(place_params)
    place.save
    redirect_to dashboard_path
  end
  
  private
  def place_params
    params.require(:place).permit(:address, :description, :eta, :rent_per_month, :bedrooms, :available, :additional, :student)
  end
end