class Photo < ActiveRecord::Base

	belongs_to :post

	validates :instagram :presence => true

end