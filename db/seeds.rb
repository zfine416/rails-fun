# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

countries = ["US", "Canada"]
positions = ["F", "D", "G"]

20.times do |i|
	User.create(email: Faker::Internet.email, password:Faker::Internet.password)
end

10.times do |i|
	Rink.create(country: countries[rand(2)], address: Faker::Address.street_address, city: Faker::Address.city, zip: Faker::Address.zip, state_province: Faker::Address.state_abbr, phone: Faker::PhoneNumber.cell_phone, user_id: i+1)
end

10.times do |i|
	Player.create(user_id: (11+i), name: Faker::Name.name , position: positions[rand(3)], bio: Faker::Lorem.paragraph)
end




