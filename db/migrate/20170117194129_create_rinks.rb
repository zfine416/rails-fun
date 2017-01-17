class CreateRinks < ActiveRecord::Migration
  def change
    create_table :rinks do |t|
    	t.string :country, :address, :city, :zip, :state_province, :phone
    	t.references :user
      t.timestamps null: false
    end
  end
end
