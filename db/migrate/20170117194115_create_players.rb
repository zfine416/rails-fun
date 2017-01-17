class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
    	t.string :name, :position
    	t.references :user
    	t.text :bio 
    	t.timestamps null: false
    end
  end
end
