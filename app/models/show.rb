class Show < ApplicationRecord

  def perform
    Show.all.each do |show|
      if show.date < Time.now
        show.destroy
      end
    end
  end

end
