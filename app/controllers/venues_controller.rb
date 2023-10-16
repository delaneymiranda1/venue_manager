class VenuesController < ApplicationController
  def index
    @venues = Venue.order(created_at: :desc)
  end

  def show
    @venue = Venue.find(params[:id])
    @show_count = @venue.shows.count
  end
end