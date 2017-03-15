class ChangeColumnOnShowsTable < ActiveRecord::Migration[5.0]
  def change
    change_column :shows, :date, :date
  end
end
