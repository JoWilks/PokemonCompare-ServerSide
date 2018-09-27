class CreatePokeTeamsPokemonsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :poke_teams_pokemons, id: false do |t|
            t.integer :poke_team_id, index: true
            t.integer :pokemon_id, index: true
          end
  end
end