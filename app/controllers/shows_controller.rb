class ShowsController < ApplicationController

  def index
    if Show.any?
      @shows = Show.all.order("date ASC")
    else
      redirect_to root_path
    end
  end

  def new
    if current_user
      @show = Show.new
    else
      redirect_to root_path
    end
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
    params.require(:show).permit(:date, :city, :location, :price, :event_url, :image_url, :venue_url)
  end

end
