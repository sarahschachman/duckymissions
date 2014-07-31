class User <ActiveRecord::Base

	validates :name, :presence => true
	validates :instagram, :presence => true
	validates :email, :presence => true

end