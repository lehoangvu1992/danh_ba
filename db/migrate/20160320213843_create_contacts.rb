class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :number
      t.text :address
      t.text :note
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
