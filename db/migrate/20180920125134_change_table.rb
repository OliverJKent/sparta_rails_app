class ChangeTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :accounts, :owner_id, :user_id
  end
end
