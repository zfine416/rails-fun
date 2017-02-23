class Rink < ActiveRecord::Base
	belongs_to :user
	has_many :games
	geocoded_by :full_street_address 
	after_validation :geocode, :if => :full_street_address_changed?
	attr_accessor :full_street_address

	private
	def full_street_address
		[address, city, state_province, country].compact.join(', ')
	end
end
