# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning the database"
User.destroy_all
Bird.destroy_all

puts "Database clean now!!"

puts "Creating users"
user1 = User.create!(email: "abc@blabla.com", password: "123456")
user1 = User.create!(email: "user@blabla.com", password: "123456")
user1 = User.create!(email: "admin@blabla.com", password: "123456")
user1 = User.create!(email: "user1@blabla.com", password: "123456")
puts "Users created successfully"

puts "Creating Birds"
new_bird = Bird.create!(name: "Bird 1", breed: "Flamingo", price: 10, location: "Berlin", user_id: 1)
new_bird = Bird.create!(name: "Bird 2", breed: "Albatross", price: 20, location: "Frankfurt", user_id: 1)
new_bird = Bird.create!(name: "Bird 3", breed: "Chicken", price: 30, location: "Leipzig", user_id: 1)
new_bird = Bird.create!(name: "Bird 4", breed: "Emu", price: 25, location: "London", user_id: 1)
new_bird = Bird.create!(name: "Bird 5", breed: "Owl", price: 15, location: "Paris", user_id: 1)
new_bird = Bird.create!(name: "Bird 6", breed: "Parrot", price: 18, location: "Stockholm", user_id: 1)
new_bird = Bird.create!(name: "Bird 7", breed: "Penguin", price: 23, location: "Sofia", user_id: 1)
new_bird = Bird.create!(name: "Bird 8", breed: "Turkey", price: 33, location: "Cologne", user_id: 1)

puts "Birds created successfully"

puts "Done"
