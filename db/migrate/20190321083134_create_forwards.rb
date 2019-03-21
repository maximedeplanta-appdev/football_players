class CreateForwards < ActiveRecord::Migration[5.1]
  def change
    create_table :forwards do |t|
      t.integer :position_id

      t.timestamps
    end
  end
end
