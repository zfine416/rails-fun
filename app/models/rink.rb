class Rink < ActiveRecord::Base
	belongs_to :user
	has_many :games
end
