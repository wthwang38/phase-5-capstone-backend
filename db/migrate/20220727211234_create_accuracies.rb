class CreateAccuracies < ActiveRecord::Migration[7.0]
  def change
    create_table :accuracies do |t|
      t.integer :missed
      t.integer :hit
      t.integer :total
      t.float :timeba
      t.float :acc_percent
      t.integer :user_id
      t.integer :game_id

      t.timestamps
    end
  end
end
