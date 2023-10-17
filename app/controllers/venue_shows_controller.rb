class VenueShowsController < ApplicationController
  def index
    @venue = Venue.find(params[:id])
    @venue_shows = @venue.shows
  end

end