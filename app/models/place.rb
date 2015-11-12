class Place < ActiveRecord::Base
	belongs_to :user
	validates :name, :presence => true, :uniqueness => true, :length => { :minimum => 3 }
	validates :address, :presence => true, :length => { :minimum => 10 }
	validates :description, :presence => true, :length => { :within => 3..500 }

end
