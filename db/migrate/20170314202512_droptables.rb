class Droptables < ActiveRecord::Migration[5.0]
  def change
    drop_table :admins
    drop_table :sessions
  end
end
