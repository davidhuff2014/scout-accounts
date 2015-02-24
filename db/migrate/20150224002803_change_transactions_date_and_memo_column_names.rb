class ChangeTransactionsDateAndMemoColumnNames < ActiveRecord::Migration
  def change
    rename_column :transactions, :transaction_date, :date
    rename_column :transactions, :transaction_memo, :memo
  end
end
