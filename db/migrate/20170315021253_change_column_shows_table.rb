class ChangeColumnShowsTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :shows, :url, :event_url
  end
end
