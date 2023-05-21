# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb
puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

appart1 = {name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3}

appart2 = {name: 'Appartement duplex, spacieux avec un studio de musique',
  address: '40 rue du Général Saussier, Troyes',
  description: 'Appartement de 70m2 avec un studio de musique aménagé. Situé en centre ville, à proximité du lac d\'Orient',
  price_per_night: 90,
  number_of_guests: 3}

appart3 = {name: 'Appartement au rez de chaussée, spacieux.',
  address: '14, rue de Paris, à Boissy Saint Leger',
  description: 'Appartement de 30m2, situé à 5mn de la gare. Venez profiter du jardin zen!',
  price_per_night: 50,
  number_of_guests: 2}

appart4 = {name: 'Maison avec un beau jardin, situé en province',
  address: '14, rue de Paris, à Troyes',
  description: 'Maison de 90m2, situé en province. Vous avez tout l\'espace pour vos barbecues !',
  price_per_night: 70,
  number_of_guests: 6}

  [appart1, appart2, appart3, appart4].each do |attributes|
    flat = Flat.create!(attributes)
    puts "Created #{flat.name}"
  end

puts "Finished!"
