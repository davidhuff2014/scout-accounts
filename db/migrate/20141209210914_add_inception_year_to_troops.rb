class AddInceptionYearToTroops < ActiveRecord::Migration
  def change
    add_column :troops, :inception_year, :integer
  end
end
