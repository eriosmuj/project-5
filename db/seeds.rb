# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "🏕 Seeding users..."
liz = User.create(username: 'Liz')
mimosa = User.create(username: 'Mimosa')
milo = User.create(username: 'Milo')

puts "🏕 Seeding airlines..."
american_airlines = Airline.create(name: "American Airlines")
delta = Airline.create(name: "Delta")
southwest = Airline.create(name: "Southwest")
united = Airline.create(name: "United")
spirit = Airline.create(name: "Spirit Airlines")
frontier = Airline.create(name: "Frontier")
jetblue = Airline.create(name: "Jetblue Airways")
alaska_airlines = Airline.create(name: "Alaska Airlines")

puts "🏕 Seeding reviews..."
review1 = Review.create(name: "eh", rating: 5, user_id: milo.id, airline_id: spirit.id)
review2 = Review.create(name: "no space!", rating: 2, user_id: mimosa.id, airline_id: jetblue.id)


puts "🏕 Seeding preferences..."
preference1 = Preference.create(name: "American Airlines", user_id: liz.id, airline_id: american_airlines.id)
preference2 = Preference.create(name: "United", user_id: milo.id, airline_id: united.id)

puts "✅ Done seeding!"