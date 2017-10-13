class Account < ApplicationRecord
	 belongs_to :supplier, optional: true
  has_one :account_history
end
