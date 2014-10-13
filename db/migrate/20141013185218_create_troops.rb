class CreateTroops < ActiveRecord::Migration
  def change
    create_table :troops do |t|
      t.integer :troop_number

      t.timestamps
    end
  end
end
