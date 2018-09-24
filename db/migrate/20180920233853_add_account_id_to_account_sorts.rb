class AddAccountIdToAccountSorts < ActiveRecord::Migration[5.2]
  def change
    add_column :account_sorts, :account_id, :integer
  end
end
