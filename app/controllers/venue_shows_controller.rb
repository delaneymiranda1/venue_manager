class VenueShowsController < ApplicationController
  def index
    @venue = Venue.find(params[:id])
    @shows = @venue.shows
  end

end