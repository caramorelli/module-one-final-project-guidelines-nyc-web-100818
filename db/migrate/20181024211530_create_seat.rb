class CreateSeat < ActiveRecord::Migration[5.0]
  def change
    create_table :seats do |t|
      t.boolean :occupied?
      t.integer :flight_id
      t.string :class
    end
  end
end
