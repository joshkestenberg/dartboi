class ShowsController < ApplicationController

  def index
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
    params.require(:show).permit(:date, :time, :url, :image_url, :price)
  end

end
