class CreatePlayersGameOccurenceJoinTable < ActiveRecord::Migration
  def change
  	create_table :game_occurrences_players, id:false do |t|
  	  	t.belongs_to :game_occurrence, index: true
  		t.belongs_to :player, index: true
  	end
  end
end
