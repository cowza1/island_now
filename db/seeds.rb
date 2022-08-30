# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"
puts "destroy_islands"
Island.destroy_all
puts "destroy_users"
User.destroy_all
user_1 = User.create!(email: "bernard@gmail.com", password: 123456 )
user_2 = User.create!(email: "adam@gmail.com", password: 123456 )
puts "creating_islands"
5.times do
  Island.create!(
    name: Faker::Nation.capital_city,
    user: user_1,
    location:  Faker::WorldCup.group,
    availability: true,
    price: rand(3000..10000000),
    description: Faker::GreekPhilosophers.quote,
    mini_description: Faker::Quotes::Shakespeare.as_you_like_it_quote

  )
end
5.times do
  Island.create!(
    name: Faker::Nation.capital_city,
    user: user_2,
    location:  Faker::WorldCup.group,
    availability: true,
    price: rand(3000..10000000),
    description: Faker::GreekPhilosophers.quote,
    mini_description: Faker::Quotes::Shakespeare.as_you_like_it_quote

  )
end
puts "finish"
