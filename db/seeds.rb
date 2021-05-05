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
    picture_url: "https://source.unsplash.com/random/?house"
    )
  puts "flat #{flat.id} is created"
end

puts "Database populated!"
