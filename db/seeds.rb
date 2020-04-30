# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Doctor.create(first_name: "Jacky", last_name:"Galou", specialty:"musicotherapeuthe", zip_code:"44770")
Doctor.create(first_name: "Johnny", last_name:"Vaconces", specialty:"musicotherapeuthe", zip_code:"75000")
puts "two Doctors created"

Patient.create(first_name: "Emmanuel", last_name:"Macron")
Patient.create(first_name: "Sylvestre", last_name:"Standalone")
Patient.create(first_name: "Marguerite", last_name:"Sapin")
puts "Three patients created" 

Appointment.create(doctor:Doctor.find(2), patient:Patient.find(2), date:Date.today)
Appointment.create(doctor:Doctor.find(1), patient:Patient.find(3), date:Date.today)
puts "Two appointments were scheduled"




