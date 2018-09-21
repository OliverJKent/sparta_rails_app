class AddAccountBalanceToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :account_balance, :integer
  end
end
