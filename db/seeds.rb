# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
user6 = User.new(email: "abc@blabla.com", password: "123456")
user6.save!

Bird.destroy_all
new_bird = Bird.new(name: "Wow", breed: "Flamingo", price: 10, location: "Berlin", user_id: 1)
new_bird.save!
