class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :nickname
      t.string :name
      t.string :nature
      t.integer :level
      t.integer :attack
      t.integer :special_attack
      t.integer :defence
      t.integer :special_defence
      t.integer :speed
      t.integer :hp
      t.string :averagepokemonstats
      t.integer :user_id

      t.timestamps
    end
  end
end