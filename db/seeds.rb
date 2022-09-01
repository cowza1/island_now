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
array.each_with_index do |image, index|
  names = ["BLUE ISLAND","NECKER ISLAND","CALIVIGNY ISLAND","OVER YONDER CAY","PELICAN ISLAND","HUMMINGBIRD CAY"]
  locations = ["BAHAMAS","CARIBBEAN","GRENADA","BAHAMAS","ANTIGUA","BAHAMAS"]
  description_main = ["Envision yourself landing in your private jet on the new 5,700-foot asphalt airstrip on Blue Island in the Exuma district of the Bahamas. The sapphire blue water and untouched white sand beaches that fill your view are so bright that they seem to glow. The scene only becomes more intoxicating when you see the enchanting main house with seven
                      bedrooms and seven bathrooms, guesthouse, a pool plus a five-bedroom, five-bathroom caretakers house, all move-in ready. This impressive 700-acre island has sophisticated amenities as dazzling as the views, including four miles of roads, a fire pit, jogging and bike path, power, water and communications systems. Even customs and immigration are available on the
                      island for ease of arrival and departure. There's a helipad too, as well as a boat ramp and docks.This fabulous island, home to three miles of treasured coastline and glistening beaches, features elevations up to 100 feet and numerous private beachfront home sites. If you don't require total seclusion, the island is also ready for development. There is great potential
                      for a luxury hotel resort, and the Bahamian government encourages foreign direct investment. Blue Island is an easy 20-minute trip by boat to the main island, and then it's only 20 miles by car to shopping, restaurants and the international airport at Georgetown. Here, nature is dominant, coastlines remain flawless and private homes play host to some of the world's most
                        famous celebrities. It's a location that any island hunter would be proud to claim.",
                      "Welcome to Necker Island, Sir Richard Branson's private island paradise in the British Virgin Islands, a stunning and unspoiled area of the Caribbean. At 74 acres, Necker Island sits in turquoise waters surrounded by coral reefs, fringed with beautiful white sandy beaches and is home to the most spectacular wildlife. From hosting spectacular nuptials to throwing
                      legendary private parties, Necker Island is no stranger to out-of-this-world special occasions. Explore what makes the private island the ultimate location to hold a wedding or celebration.",
                      "The ultimate private island destination, Calivigny Island combines opulent accommodation and unparalleled service set in exotic Caribbean. Spread over 80 lush acres with 2 sandy beaches and sweeping views of the Atlantic and Caribbean oceans, Calivigny is renowned to be one of the most exquisite and exclusive private island rentals in the world. Your own private
                      island resort experience boasts 2 luxury villas and 3 beach cottages, a fleet of boats, private chefs and a host of thrilling activities for the sport inclined traveler and for those who just prefer to soak up the sun and completely unwind. From the moment you step foot on the island, you will feel the magic of this Undiscovered Gem of the Caribbean.",
                      "Welcome to Over Yonder Cay, luxury and privacy at its finest. We welcome parties of up to 30 guests in four uniquely designed villas, all with private beaches and breathtaking views. A former remote fishing outpost, the island has been transformed into a unique eco-friendly haven for those seeking authentic and sustainable barefoot luxury. Full island
                      rental rates include full use of the island's extensive amenities, activities and facilities. Rental of the whole island ensures total privacy and the full attention of our highly experienced staff. Over Yonder Cay is powered by a state-of-the-art renewable energy system, which includes three wind turbines and a 1.5-acre solar field.
                      Single villa rentals are also offered if available, with a separate amenity profile.",
                      "Get the rare chance to acquire a freehold island just off the coast of Antigua, one of the Caribbean's leading tourist destinations. Pelican Island presents a unique development opportunity to create a truly exclusive island destination. Previously inhabited, the Caribbean island has domestic water storage and is connected to the public power supply.
                      VC Bird International Airport is approximately 30 minutes travel time by boat. Pelican Island in Antigua is well protected by a natural reef and at its closest point is within 150 yards of the mainland. Naturally protected on its windward shore by a fringing coral reef, both sides of the Caribbean island offer sheltered lagoons and extensive beach frontage.",
                        "Located on pristine crystal-clear waters of the Exumas in a secluded and private location of the southern Bahamas, Hummingbird Cay is a 175-acre oasis of nature trails, powder white sand beaches and gently rolling hills, historically used as a family retreat for more than five decades. The virtually footprint-free sanctuary is perfectly suited for creating your own tropical family estate, or development into an ultra-high-end boutique luxury resort.
                        Outdoorsmen, divers, snorkelers, and fishing enthusiasts will find the virgin waters surrounding Hummingbird Cay abundant with native Bahamian delicacies such as spiny lobster, conch, and grouper. For the deep-sea fisherman, there are mahi-mahi, tuna, and the ever-elusive wahoo. Potential day trips from Hummingbird Cay are endless with choices ranging from snorkeling on vibrant and colorful coral reefs, to exploring unspoiled and trackless beaches on
                        neighboring uninhabited islands, to bone fishing or going into town to a dockside restaurant. Rare seabirds such as seahawks and frigate birds are often seen soaring overhead and occasionally even a flamingo is spotted."]

  mini = ["Envision yourself landing in your private jet on the new 5,700-foot asphalt airstrip on Blue Island in the Exuma district of the Bahamas. The sapphire blue water and untouched white sand beaches that fill your view are so bright that they seem to glow.",
          "Necker Island is a 30-hectare island in the British Virgin Islands just north of Virgin Gorda. The island is entirely owned by Sir Richard Branson, chairman of the Virgin Group, and is part of the Virgin Limited Edition portfolio of luxury properties.",
          "Calivigny island, your private paradise in Caribbean. For rent on exclusive use only! Your Luxury Private Island awaits. Imagine having one of the most beatiful Island all to yourself.",
          "Over Yonder Cay is a privately owned island paradise in the heart of the Bahamas’ Exuma Chain. Previously home to a quaint fishing outpost, the 72-acre island has been tastefully transformed into a dramatic showplace for stunning architectural design and cutting-edge green energy technology.",
          "Pelican Island offers a rare opportunity to acquire a freehold island in one of the Caribbean's leading tourist destinations. With it's stunning views and sandy beaches it is perfect for any occasion",
          "Hummingbird Cay is a magnificent 257-acre jewel set only 5 miles from the mainland of Great Exuma. The island is surrounded by crystal clear water and ever-changing views of sandbars, reefs, and sky.",
]
  island = Island.create!(
    name: names[index],
    user: user_1,
    location:  locations[index],
    availability: true,
    price: rand(3000..10000 * 10),
    description: description_main[index],
    mini_description: mini[index]

  )
  file = URI.open(image)
  island.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
end
puts "finish"


array = ["https://res.cloudinary.com/dpt3b8spa/image/upload/v1661944153/Islands/nicole-keller-EQW8bz4P2dk-unsplash_wxrufp.jpg",
          "https://res.cloudinary.com/dpt3b8spa/image/upload/v1661944151/Islands/pablo-garcia-saldana-K1YRblz-rD0-unsplash_szm9w8.jpg",
          "https://res.cloudinary.com/dpt3b8spa/image/upload/v1661944151/Islands/jcob-nasyr-PItsVmyu34Q-unsplash_qhymrh.jpg",
          "https://res.cloudinary.com/dpt3b8spa/image/upload/v1661944151/Islands/jcob-nasyr-PItsVmyu34Q-unsplash_qhymrh.jpg"]
array.each_with_index do |image, index|
  names = ["LIGHTHOUSE CAY", "SALINE ISLAND","GUN POINT","LITTLE SAMPSON CAY"]
  locations = ["CARIBBEAN","GRENADA","BAHAMAS","ANTIGUA"]
  description_main =["Lighthouse point offers over 4 miles of beachfront and iron shore with deep water access in the protected south east corner of the property. Lighthouse Point is ideal for the creation of a residential resort development, including marina and golf course, or a private estate. This
                    property is simply the best development opportunity in The Bahamas.",
                  "Saline is well-known for its mangrove, large salt pond, wild goats and its wide variety of birds and fish. It is also the nesting place for sea turtles. A two- bedroom beach house faces a shallow lagoon with its varying shades of blue. An ancient but sturdy relic of a lime kiln stands as a perpetual reminder of the island's history.
                  The breath-taking view of the surrounding islands, its extraordinarily white sandy beaches, sloping hills, numerous fish and mollusks, sheltered bay ideal for yacht moorage all make this island a perfect paradise for secluded, exotic get-away. Chartered boats or helicopters can take passengers to and from the mainland, Carriacou.
                  The owners are currently seeking investors and developers to propose developmental projects for this island.",
                  "The property consists of a Main Owner's house with four bedrooms, 4.5 bathrooms with 4000 sq. ft. of living space, a caretaker's cottage, dock, gazebos and boat ramp, a water catchment area with a 210,000-gallon rainwater tank and generators. The potential for development is vast with 73 acres of undeveloped land from the main road, south along the waterfront and north along the bordering Spanish Wells Commonage Land, with exquisite sweeping white sand beaches to the north overlooking the ocean with panoramic views and elevations up to 45 feet above sea level.
                  Geographically, Gun Point is very accessible, it is directly across from Spanish Wells with access from North Eleuthera Airport and a Water Ferry from Nassau to Spanish Wells, with Florida conveniently 200 miles away.
                  Whether you are looking for your dream residence or are in the market for beachfront development, Gun Point is a must-see.",
                  "In 2013 the owner closed its doors to the public for his exclusive use and is kept in excellent condition. The island has 6 furnished guesthouses (11 bedrooms) and three staff houses (9 bedrooms). Additionally, there is a restaurant, marina store and showers, 2,000 feet of protected
                  docks, seaplane ramp, and fuel dock. Electricity is supplied by an acre of solar panels and 3 diesel generators. Water is made at a rate of 19,000 gals a day and stored in three 25,000 gal tanks. Wi-Fi is available in all of the buildings. The island is accessible by boat, seaplane,
                  helicopter, or plane via Staniel Cay just 3 miles to the south. Staniel Cay has a public 3,000 x 75-foot surfaced runway with limited commercial flights from South Florida, a hotel, and a marina."]

  mini =["Lighthouse Point offers an incredible opportunity to own one of the most beautiful parcels of land in The Bahamas. A stunning peninsula with incredible beaches on both sides of the property, 3 interior lakes and 50 ft elevations make this a one of a kind opportunity in The Bahamas.",
        "Saline Island, Grenada, is located in the southeastern Caribbean Sea. This beautiful 64-acre island lies 1.5 km south of Carriacou, which is the second largest island of the Grenadines.",
        "This beautiful 80 plus acre peninsula with 2 miles of coastline on the northern tip of the mainland of North Eleuthera in The Bahamas is perfect in its present condition as a residence or has great potential for development.",
        "Little Sampson Cay is located 3 miles north of Staniel Cay and immediately south of Pipe Creek in the beautiful Exuma Cays. The island underwent a complete refit and opened to the public in 2001 with a full marina, store, restaurant, and rental units/houses."]

  island = Island.create!(
    name: names[index],
    user: user_2,
    location:  (locations[index]),
    availability: true,
    price: rand(3000..10000000),
    description: description_main[index],
    mini_description: mini[index]

  )
  file = URI.open(image)
  island.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
end
puts "finish"

names = ["LIGHTHOUSE CAY", "SALINE ISLAND","GUN POINT","LITTLE SAMPSON CAY"]
