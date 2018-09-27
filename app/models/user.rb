class User < ApplicationRecord
    has_many :pokemons
    has_many :poke_teams
end

