class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
    	t.date :date
    	t.time :start_time
    	t.integer :duration
    	t.references :rink
      t.timestamps null: false
    end
  end
end
