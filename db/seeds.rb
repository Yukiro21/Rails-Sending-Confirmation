# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

airports = Airport.create([
  { code: "OMC", city: "Ormoc" }, { code: "MLA", city: "Manila" },
  { code: "ATL", city: "Davao" }, { code: "DFW", city: "Cebu" },
  { code: "ORD", city: "Palawan" }, { code: "LAS", city: "Tommorowland" },
  { code: "PHX", city: "Maldives" }, { code: "MIA", city: "Paris France" }
  ])

today = Date.today
month_from_today = Date.today + 20

(today..month_from_today).each do |date|
  FlightGenerator.call(date)
end
