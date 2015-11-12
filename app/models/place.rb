class Place < ActiveRecord::Base
	belongs_to :user
	validates :name, :presence => true, :uniqueness => true, :length => { :minimum => 2 }
end
