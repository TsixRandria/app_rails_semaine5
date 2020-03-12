# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
	City.create(name: Faker::Nation.capital_city,postal_code: Faker::IDNumber.chilean_id)
end

10.times do
	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph, email: Faker::Internet.email, age:rand(22...40), city_id: rand(1..10))
end


20.times do
	Gossip.create(title: Faker::Book.title, content: Faker::Lorem.paragraph, user_id:rand(1..10))
end

10.times do
	Tag.create(title: "#"+ Faker::Lorem.word)
end

PrivateMessage.create(content: Faker::Lorem.paragraph, recipient_id: rand(1..10), sender_id: rand(1..10))