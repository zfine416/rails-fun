class User < ActiveRecord::Base
	has_one :player
	has_one :rink
	resourcify
  	rolify
  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable and :omniauthable
  	before_create :set_role
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	private 
end
