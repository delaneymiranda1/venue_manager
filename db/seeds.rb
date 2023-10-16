# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
venue_1 = Venue.create!(name: "Red Rocks", city: "Morrison", capacity: 9545, open: true)
venue_2 = Venue.create!(name: "Mission Ballroom", city: "Denver", capacity: 3950, open: true)
venue_3 = Venue.create!(name: "Cervantes", city: "Denver", capacity: 1000, open: true)
show_1 = venue_1.shows.create!(artist_name: "Liquid Stranger", price: 55, sold_out: true)
show_2 = venue_1.shows.create!(artist_name: "Mersiv", price: 55, sold_out: false)
show_3 = venue_2.shows.create!(artist_name: "Griz", price: 45, sold_out: true)
show_4 = venue_2.shows.create!(artist_name: "G Jones", price: 45, sold_out: true)
show_5 = venue_3.shows.create!(artist_name: "Smoakland", price: 35, sold_out: false)
show_6 = venue_3.shows.create!(artist_name: "Jantsen", price: 35, sold_out: true)
