class AddLatitudeAndLongitudeToRink < ActiveRecord::Migration
  def change
    add_column :rinks, :latitude, :float
    add_column :rinks, :longitude, :float
  end
end
