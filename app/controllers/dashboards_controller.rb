class DashboardsController < ApplicationController
  def show
    @place = Place.new
    @places = current_user.places
  end
  
  def new
    @place = Place.new
  end
end