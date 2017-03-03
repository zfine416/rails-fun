class Game < ActiveRecord::Base
	belongs_to :rink
	has_many :game_occurrences
	acts_as_schedulable :schedule, occurrences: :game_occurrences
end
