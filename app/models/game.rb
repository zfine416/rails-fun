class Game < ActiveRecord::Base
	belongs_to :rink
	has_and_belongs_to_many :players
	acts_as_schedulable :schedule
end
