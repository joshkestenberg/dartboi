class DropTableSessions < ActiveRecord::Migration[5.0]
  def change
    drop_table :sessions
  end
end
