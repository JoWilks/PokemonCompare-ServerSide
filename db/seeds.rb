# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# jo = User.create(name: "jo")
jo = User.create(username: "jo", password:"password")

blah = Poketeam.create(name:"blah", user_id: 1)

ratty = Pokemon.create(user_id: 1, nickname: "ratty", name:"rattata", level: 5, nature:"greedy", attack: 10, special_attack: 12, defence: 8, special_defence: 6, speed: 14, hp: 10, averagepokemonstats: Pokemon.get_pokemon("rattata"))
pididgey = Pokemon.create(user_id: 1, nickname: "pididgey", name:"pidgey", level: 4, nature:"fiery", attack: 8, special_attack: 11, defence: 9, special_defence: 8, speed: 12, hp: 9, averagepokemonstats: Pokemon.get_pokemon("pidgey"))

blah.pokemons << ratty
blah.pokemons << pididgey