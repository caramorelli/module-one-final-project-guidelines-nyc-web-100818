class CreatePlayer < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :username
      t.integer :age

      t.timestamps
    end
  end
end
