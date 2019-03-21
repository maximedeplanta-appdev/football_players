class CreateGoalkeepers < ActiveRecord::Migration[5.1]
  def change
    create_table :goalkeepers do |t|
      t.integer :position_id

      t.timestamps
    end
  end
end
