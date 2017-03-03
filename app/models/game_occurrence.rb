class GameOccurrence < ActiveRecord::Base
  belongs_to :schedulable, polymorphic: true
  belongs_to :game
  has_and_belongs_to_many :players
  default_scope { order('date ASC') }
  scope :remaining, lambda{where(["date >= ?",Time.now])}
  scope :previous, lambda{where(["date < ?",Time.now])}
end
