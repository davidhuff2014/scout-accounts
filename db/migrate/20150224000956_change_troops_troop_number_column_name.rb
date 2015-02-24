class ChangeTroopsTroopNumberColumnName < ActiveRecord::Migration
  def change
    rename_column :troops, :troop_number, :number
  end
end
