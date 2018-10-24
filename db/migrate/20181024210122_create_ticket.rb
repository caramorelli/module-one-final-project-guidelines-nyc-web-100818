class CreateTicket < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.integer :flight_id
      t.string :class_status
      t.boolean :round_trip?
      t.float :price
      t.timestamps
    end
  end
end
