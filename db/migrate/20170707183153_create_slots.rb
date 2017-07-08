class CreateSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :slots do |t|
      t.integer :player_id
      t.integer :character_id
      t.boolean :is_alive
    end
  end
end
