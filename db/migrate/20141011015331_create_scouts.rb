class CreateScouts < ActiveRecord::Migration
  def change
    create_table :scouts do |t|
      t.string :full_name

      t.timestamps
    end
  end
end
