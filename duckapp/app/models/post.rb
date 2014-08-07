class Post < ActiveRecord::Base

	belongs_to :duck

	validates :duck_id, :presence => true
	validates :user_id, :presence => true
	validates :name, :presence => true
	validates :photo_id, :presence => true
	validates :location, :presence => true
	geocoded_by :address
	after_validation :geocode
	validates :location, uniqueness: {scope: :duck_id}
	validates :blog, :presence => true
	validates :instagram, :presence => true
	validates :email, :presence => true

end