class CreateGoldens < ActiveRecord::Migration
  def change
    create_table :goldens do |t|
      t.string :name
      t.integer :player_id

      t.timestamps
    end
  end
end
