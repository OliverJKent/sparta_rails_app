class AddAccountSortToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :account_sort, :string
  end
end
