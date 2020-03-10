# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
	Physician.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: Faker::Business.credit_card_type, postal_code: Faker::Address.street_address)
	
end

10.times do
	Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

10.times do
	Appoitment.create(date: Time.now, physician_id: rand(1...10), patient_id: rand(1..10))
end

#Physician.create(first_name:"Ando", last_name:"rami", speciality:"mofosologue", postal_code: 123)