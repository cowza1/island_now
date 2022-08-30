# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

10.times do
  Island.create(
    name: Faker::Nation.capital_city,
    user_id:  1,
    location:  Faker::WorldCup.group,
    availability: true,
    price: rand(3000..10000000),
    description: Faker::GreekPhilosophers.quote
  )
end
