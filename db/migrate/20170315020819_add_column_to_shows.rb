class AddColumnToShows < ActiveRecord::Migration[5.0]
  def change
    add_column :shows, :venue_url, :string
  end
end
