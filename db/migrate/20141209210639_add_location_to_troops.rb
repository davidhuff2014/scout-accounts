class AddLocationToTroops < ActiveRecord::Migration
  def change
    add_column :troops, :location, :string
  end
end
