class CreateBoard < ActiveRecord::Migration[5.0]
  def change
    create_table :boards do |t|

      t.integer :player_id
      t.integer :game_id

      t.integer :player_rank
      t.boolean :royalty_status
      t.integer :score
      t.integer :hints

      t.timestamps
    end
  end
end
