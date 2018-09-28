class Pokemon < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :poke_teams


    def self.get_pokemon(name) 
        response = RestClient::Request.execute(
            method: :get,
            url: "https://pokeapi.co/api/v2/pokemon/#{name}/"
        )
        JSON.parse(response)
    end



end