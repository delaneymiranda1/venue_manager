class VenuesController < ApplicationController
  def index
    @venues = Venue.order(created_at: :desc)
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def new
  end

  def create
    venue = Venue.create!({
      name: params[:name],
      city: params[:city],
      capacity: params[:capacity],
      open: params[:open] == "true"
    })

    redirect_to "/venues"
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    venue = Venue.find(params[:id])
    venue.update({
      name: params[:name],
      city: params[:city],
      capacity: params[:capacity],
      open: params[:open] == "true"
    })

    venue.save
    redirect_to "/venues/#{venue.id}"
  end

  def delete
    Venue.destroy(params[:id])

    redirect_to "/venues"
  end
end