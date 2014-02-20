class DashboardsController < ApplicationController
  def show
    @place = Place.new
    @places = []
  end
end