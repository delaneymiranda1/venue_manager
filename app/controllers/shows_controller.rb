class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def show
    @show = Show.find(params[:id])
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    show = Show.find(params[:id])
    show.update({
      artist_name: params[:artist_name],
      price: params[:price],
      sold_out: params[:sold_out] == "true"
    })

    show.save
    redirect_to "/shows/#{show.id}"
  end

  def delete
    show.destroy(params[:id])

    redirect_to "/shows"
  end
end