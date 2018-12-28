# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."

Car.destroy_all
User.destroy_all

user = User.new(email: "matthewpetzold@gmail.com", first_name: "Matthew", last_name: "Petzold", display_name: "Matthew", password: 123456, photo: "pops-avatar.jpg")
user.save

user = User.new(email: "tonythomas@gmail.com", first_name: "Tony", last_name: "Thomas", display_name: "Chairman", password: 123456, photo: "chairmans-avatar.jpg")
user.save

user = User.new(email: "tonyday@gmail.com", first_name: "Tony", last_name: "Day", display_name: "Tony D", password: 123456, photo: "tony_day.jpg")
user.save

puts "Users created..."

car = Car.new(brand: "Ferrari", model: "328", year: "1989", photo: "chairmans_duties.jpg")
car.user = User.find_by(email: "matthewpetzold@gmail.com")
car.save!

car = Car.new(brand: "Triumph", model: "TR6", year: "1969", photo: "tr6.jpg")
car.user = User.find_by(email: "tonythomas@gmail.com")
car.save!

car = Car.new(brand: "Jaguar", model: "MkII", year: "1962", photo: "chairmans-jag.jpg")
car.user = User.find_by(email: "tonythomas@gmail.com")
car.save!

car = Car.new(brand: "BMW", model: "M5", year: "2001", photo: "bmw_m5.jpg")
car.user = User.find_by(email: "matthewpetzold@gmail.com")
car.save!

car = Car.new(brand: "Fiat", model: "Punto", year: "2015", photo: "chairmans_hire_car.jpg")
car.user = User.find_by(email: "tonythomas@gmail.com")
car.save!

car = Car.new(brand: "Mitsubishi", model: "Evo X", year: "2008", photo: "evo_woops.jpg")
car.user = User.find_by(email: "matthewpetzold@gmail.com")
car.save!

puts "Cars created..."
