# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all
puts "Database is clean"

puts "Creating Flats..."

4.times do
  flat = Flat.create(
    name: Faker::Artist.name,
    address: Faker::Address.street_address,
    description: Faker::Restaurant.description,
    price_per_night: [65, 85, 110, 90].sample,
    number_of_guests: rand(1..5),
    picture_url: ["https://images.unsplash.com/photo-1568285022189-681328dab5f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80",
      "https://images.unsplash.com/photo-1593892688047-26cfe4e7075f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80",
      "https://images.unsplash.com/photo-1595765348872-356fa356acad?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80",
      "https://images.unsplash.com/photo-1562835156-7187f6003315?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
      "https://images.unsplash.com/photo-1528826291215-e7b2d8fe2c8b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80",
      "https://images.unsplash.com/photo-1594817974283-1ca24fbd6ea3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80",
      "https://images.unsplash.com/photo-1529781833076-5f422f69d1af?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=890&q=80",
      "https://images.unsplash.com/photo-1459535653751-d571815e906b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=749&q=80",
      "https://images.unsplash.com/photo-1573652636601-d6fdcfc59640?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=686&q=80"].sample
    )
  puts "flat #{flat.id} is created"
end

puts "Database populated!"
