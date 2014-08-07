class Mission < ActiveRecord::Base

	belongs_to :duck

	validates :destination, :presence => true
	validates :deadline, :presence => true

end