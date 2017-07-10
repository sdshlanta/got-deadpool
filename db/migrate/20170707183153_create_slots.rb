class CreateSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :slots do |t|
      t.integer :player_id
      t.integer :character_id
    end
  end
end
