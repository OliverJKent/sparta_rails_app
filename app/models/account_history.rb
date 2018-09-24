class AccountHistory < ApplicationRecord
  # self.abstract_class = true
  belongs_to :account
end
