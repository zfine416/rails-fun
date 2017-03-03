class RemoveScheduleInformationFromGames < ActiveRecord::Migration
  def change
  	remove_column :games, :date
  	remove_column :games, :start_time
  end
end



# t.date :date
# t.time :start_time