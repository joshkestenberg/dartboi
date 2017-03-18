class AddColumnToContact < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :sent, :boolean, default: false
  end
end
