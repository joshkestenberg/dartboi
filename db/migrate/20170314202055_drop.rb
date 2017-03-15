class Drop < ActiveRecord::Migration[5.0]
  def change
    add_column :shows, :date, :datetime
    add_column :shows, :location, :string
    add_column :shows, :price, :string
    add_column :shows, :url, :string
  end
end
