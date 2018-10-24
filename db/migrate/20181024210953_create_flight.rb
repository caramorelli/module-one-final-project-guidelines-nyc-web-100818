class CreateFlight < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.string :airline
      t.string :origin
      t.string :destination
      t.string :arrival_time
      t.string :departure_time
      t.string :duration
      t.integer :max_occupancy
      t.timestamps
    end
  end
end
