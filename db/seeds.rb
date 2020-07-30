# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'



5.times do
  City.create(name: Faker::Address.city)
end

10.times do
  Dog.create(name: Faker::Name.first_name, city: City.find(rand(1..5)))
end

7.times do
  Dogsitter.create(name: Faker::Name.last_name, city: City.find(rand(1..5)))
end

#User.where(attribute: value)

10.times do
  sitter = Dogsitter.find(rand(1..7))
  doggy = Dog.where(city: sitter.city).sample
  Stroll.create(date: Faker::Date.backward(days: 30), dog: doggy, dogsitter: sitter)
end
