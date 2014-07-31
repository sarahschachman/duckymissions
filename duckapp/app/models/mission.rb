class Mission < ActiveRecord::Base

	belongs_to :duck

	validates :destination
	validates :deadline

end