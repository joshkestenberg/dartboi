class ChangeColumnDescriptionToCity < ActiveRecord::Migration[5.0]
  def change
    rename_column :shows, :description, :city
    change_column :shows, :city, :string
  end
end
