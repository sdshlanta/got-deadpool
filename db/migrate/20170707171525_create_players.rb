class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.integer :deadpool_id
      t.string :name
    end
  end
end
