class CreateGame < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :category
      t.string :difficulty_level
      t.integer :points
      t.timestamps
    end
  end
end
