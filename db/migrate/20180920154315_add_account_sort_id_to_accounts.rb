class AddAccountSortIdToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :account_sort_id, :integer
  end
end
