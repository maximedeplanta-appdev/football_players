class CreateMidfielders < ActiveRecord::Migration[5.1]
  def change
    create_table :midfielders do |t|
      t.integer :position_id

      t.timestamps
    end
  end
end
