class Photo < ActiveRecord::Base

	validates :instagram :presence=> true

end