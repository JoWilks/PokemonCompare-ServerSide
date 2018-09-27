# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jo = User.create(name: "jo")

blah = PokeTeam.create(name:"blah", user_id: 1)

ratty = Pokemon.create(user_id: 1, nickname: "ratty", name:"rattata")
pididgey = Pokemon.create(user_id: 1, nickname: "pididgey", name:"pidgey")

blah.pokemons << ratty
blah.pokemons << pididgey