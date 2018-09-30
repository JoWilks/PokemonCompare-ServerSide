class CreatePokemonsPoketeamsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons_poketeams, id: false do |t|
            t.integer :poketeam_id, index: true
            t.integer :pokemon_id, index: true
          end
  end
end