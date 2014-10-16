class AddTroopIdToScouts < ActiveRecord::Migration
  def change
    add_column :scouts, :troop_id, :integer
  end
end
