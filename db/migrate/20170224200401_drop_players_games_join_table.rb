class DropPlayersGamesJoinTable < ActiveRecord::Migration
	def change
  		drop_table :games_players
  	end
end
