class Book < ApplicationRecord
	  belongs_to :author, optional: true

	  
 def self.search(search)
		  if search
		  where("name LIKE ?", "%#{search}%")
		  else
		   all
		  end
		end

	 paginates_per 50
  
end
