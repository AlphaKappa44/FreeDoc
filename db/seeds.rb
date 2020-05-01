# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

City.create(name: "Prefailles")
City.create(name: "Pornic")
City.create(name: "Nantes")
puts "We have created 3 cities"

Specialty.create(name: "Musicothérapeuthe")
Specialty.create(name: "Artothérapeuthe")
Specialty.create(name: "Thérapeuthe du CODE")
puts "We have created 3 specialties"

Doctor.create(first_name: "Jacky", last_name:"Galou", zip_code:"44770")#, specialty:"musicotherapeuthe": La colonne specialty a été retirée grace à une migration
Doctor.create(first_name: "Johnny", last_name:"Vaconces", zip_code:"75000")#, specialty:"musicotherapeuthe"
puts "Two Doctors were created"

Patient.create(first_name: "Emmanuel", last_name:"Macron")
Patient.create(first_name: "Sylvestre", last_name:"Standalone")
Patient.create(first_name: "Marguerite", last_name:"Sapin")
puts "Three patients were created" 

Appointment.create(doctor:Doctor.find(2), patient:Patient.find(2), date:Date.today)
Appointment.create(doctor:Doctor.find(1), patient:Patient.find(3), date:Date.today)
puts "Two appointments were scheduled"
puts "You can verify that the column specialty was erased, in the rails console by typing Doctors.all"
