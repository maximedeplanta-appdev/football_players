class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :nationality
      t.string :club
      t.integer :age
      t.integer :position_id
      t.string :name
      t.integer :level

      t.timestamps
    end
  end
end
