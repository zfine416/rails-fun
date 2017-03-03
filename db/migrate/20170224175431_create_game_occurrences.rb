class CreateGameOccurrences < ActiveRecord::Migration
  def self.up
    create_table :game_occurrences do |t|

      t.references :schedulable, polymorphic: true
      t.datetime :date

      t.timestamps
      
    end
  end

  def self.down
    drop_table :game_occurrences
  end
end