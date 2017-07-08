class CreateDeadpool < ActiveRecord::Migration[5.1]
  def change
    create_table :deadpools do |t|
      t.string :name
    end
  end
end
