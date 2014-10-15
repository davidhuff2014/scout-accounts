class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :scout_id
      t.date :transaction_date
      t.string :transaction_memo
      t.integer :payment
      t.integer :deposit
      t.integer :running_total
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
