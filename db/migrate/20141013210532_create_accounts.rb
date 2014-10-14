class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :scout_id
      t.date :transaction_date
      t.string :transaction
      t.integer :payment
      t.integer :deposit
      t.integer :total

      t.timestamps
    end
  end
end
