class CreateDefenders < ActiveRecord::Migration[5.1]
  def change
    create_table :defenders do |t|
      t.integer :position_id

      t.timestamps
    end
  end
end
