class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }, presence: true

    has_many :pokemons
    has_many :poketeams
    
end

