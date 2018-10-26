# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do 
  doctor =  Doctor.create!(first_name: Faker::Name.name, last_name: Faker::Name.name, specialty: Faker::Superhero.power, postal_code: Faker::Number.number(5))
end
  
10.times do
  patient = Patient.create!(first_name: Faker::Name.name, last_name: Faker::Name.name)
end

10.times do
  appointment= Appointment.create!(date: Faker::Date.forward(90).to_datetime, doctor_id: rand((Doctor.first.id)..(Doctor.last.id)), patient_id: rand((Patient.first.id)..(Patient.last.id)))
end