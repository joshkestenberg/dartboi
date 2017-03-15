class AddTableContacts < ActiveRecord::Migration[5.0]
  def change
    create_table(:contacts) do |t|
      t.string :email
      t.text :body
    end
  end
end
