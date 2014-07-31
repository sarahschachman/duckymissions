class Duck < ActiveRecord::Base

	has_many :missions, :dependent => :destroy

	validates :name, :presence => true
	validates :url, uniqueness: {scope: duck_id}
	validates :code, uniqueness: {scope: duck_id}

end