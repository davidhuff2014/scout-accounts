class AddCharterSponsorToTroops < ActiveRecord::Migration
  def change
    add_column :troops, :charter_sponsor, :string
  end
end
