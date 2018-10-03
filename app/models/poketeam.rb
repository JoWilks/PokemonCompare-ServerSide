class Poketeam < ApplicationRecord
    validates :name
    belongs_to :user
    has_and_belongs_to_many :pokemons

end
