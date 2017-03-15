class ShowsController < ApplicationController

  def index
    @shows = Show.all.order("date ASC")
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)
    if @show.save
      redirect_to shows_path
    end
  end

  def edit
  end

  def updated
  end

  def destroy
  end

  private

  def show_params
    params.require(:show).permit(:date, :location, :price, :url, :image_url, :venue_url, :description)
  end

end
