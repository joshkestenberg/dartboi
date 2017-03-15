class HomeController < ApplicationController

  def about
  end

  def music
  end

  def main
    if Show.any?
      @show = Show.all.order("date ASC").limit(1)[0]
    end
  end

end
