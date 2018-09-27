class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :nickname
      t.string :name
      t.string :nature
      t.string :stats
      t.string :averagepokemonstats
      t.integer :user_id

      t.timestamps
    end
  end
end