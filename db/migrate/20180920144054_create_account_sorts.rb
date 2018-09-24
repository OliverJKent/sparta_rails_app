class CreateAccountSorts < ActiveRecord::Migration[5.2]
  def change
    create_table :account_sorts do |t|
      t.string :sort

      t.timestamps
    end
  end
end
