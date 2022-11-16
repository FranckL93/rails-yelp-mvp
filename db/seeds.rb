require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Cleaning database..."
Restaurant.destroy_all
puts 'Creating 5 fake restaurants...'
5.times do
  restaurant = Restaurant.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number:  "#{Faker::PhoneNumber.phone_number}",
    category: "chinese"
  )
  restaurant.save!
end
puts 'Finished!'


# puts "Creating restaurants..."
# dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE" }
# pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ",  }
# popolare =  { name: "Popolare", address: "56 avenue parmentier, Paris" }
# augustin =  { name: "Augustin", address: "5 rue batignolle, Paris",  }
# mama_roma = { name: "Mama Roma", address: "6 villa-gaudelet, Paris", rating: 3 }

# [dishoom, pizza_east, popolare, augustin, mama_roma].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts "Created #{restaurant.name}"
# end
# puts "Finished!"
