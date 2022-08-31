# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"
require "open-uri"

puts "destroy_islands"
Island.destroy_all
puts "destroy_users"
User.destroy_all
user_1 = User.create!(email: "bernard@gmail.com", password: 123456, first_name: "Ben", last_name:"Simpson", avatar:"https://robohash.org/sitsequiquia.png?size=300x300&set=set3")
user_2 = User.create!(email: "adam@gmail.com", password: 123456, first_name: "Adam", last_name: "Couser", avatar:"https://robohash.org/sitsequiquia.png?size=300x300&set=set4")
puts "creating_islands"

array = ["https://res.cloudinary.com/dpt3b8spa/image/upload/v1661944234/Islands/louie-martinez-PriGaAJYxq4-unsplash_ggskyw.jpg",
          "https://res.cloudinary.com/dpt3b8spa/image/upload/v1661944233/Islands/jailam-rashad-ghddpSvxIoo-unsplash_b03au5.jpg",
          "https://res.cloudinary.com/dpt3b8spa/image/upload/v1661944157/Islands/aishath-naj-jwnsA9jX81U-unsplash_mkqyae.jpg",
          "https://res.cloudinary.com/dpt3b8spa/image/upload/v1661944155/Islands/denys-nevozhai-guNIjIuUcgY-unsplash_lnupvu.jpg",
          "https://res.cloudinary.com/dpt3b8spa/image/upload/v1661944154/Islands/matheen-faiz-z9-FjHZvh5g-unsplash_backyu.jpg",
          "https://res.cloudinary.com/dpt3b8spa/image/upload/v1661944153/Islands/matheen-faiz-Qoll8RMSRyQ-unsplash_nfkf3p.jpg"]
array.each do |image|
  island = Island.create!(
    name: Faker::Nation.capital_city,
    user: user_1,
    location:  Faker::WorldCup.group,
    availability: true,
    price: rand(3000..10000000),
    description: Faker::GreekPhilosophers.quote,
    mini_description: Faker::Quotes::Shakespeare.as_you_like_it_quote

  )
  file = URI.open(image)
  island.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
end
puts "finish"


array = ["https://res.cloudinary.com/dpt3b8spa/image/upload/v1661944153/Islands/nicole-keller-EQW8bz4P2dk-unsplash_wxrufp.jpg",
          "https://res.cloudinary.com/dpt3b8spa/image/upload/v1661944151/Islands/pablo-garcia-saldana-K1YRblz-rD0-unsplash_szm9w8.jpg",
          "https://res.cloudinary.com/dpt3b8spa/image/upload/v1661944151/Islands/jcob-nasyr-PItsVmyu34Q-unsplash_qhymrh.jpg",
          "https://res.cloudinary.com/dpt3b8spa/image/upload/v1661944151/Islands/jcob-nasyr-PItsVmyu34Q-unsplash_qhymrh.jpg"]
array.each do |image|
 island = Island.create!(
    name: Faker::Nation.capital_city,
    user: user_2,
    location:  Faker::WorldCup.group,
    availability: true,
    price: rand(3000..10000000),
    description: Faker::GreekPhilosophers.quote,
    mini_description: Faker::Quotes::Shakespeare.as_you_like_it_quote

  )
  file = URI.open(image)
  island.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
end
puts "finish"
