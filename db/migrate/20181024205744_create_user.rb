class CreateUser < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :party_count
      t.string :passport_id
      t.integer :travel_points
      t.boolean :membership
      t.timestamps
    end
  end
end
