class AccountHistory < ApplicationRecord
	  belongs_to :account, optional: true
end
