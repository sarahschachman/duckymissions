class Post < ActiveRecord::Base

	validates :duck_id, :presence => true
	validates :user_id, :presence => true
	validates :photo_id, :presence => true
	validates :location, :presence => true
	validates :location, uniqueness: {scope: :duck_id}
	validates :blog, :presence => true

end