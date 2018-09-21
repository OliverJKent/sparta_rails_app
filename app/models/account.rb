class Account < ApplicationRecord
  belongs_to :user
  belongs_to :account_sort
end
