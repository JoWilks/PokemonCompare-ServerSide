class Pokemon < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :poketeams


    def self.get_pokemon(name) 
        response = RestClient::Request.execute(
            method: :get,
            url: "https://pokeapi.co/api/v2/pokemon/#{name}/"
        )
        data = JSON.parse(response)

    #filters the parsed response to include the key/value pairs as specified by the keys in array_keys
        pokemon_obj = {}
        array_keys = ["id", "base_experience", "abilities", "stats", "name", "sprites", "species", "types"] 
        data.each{ |key, value|
            if array_keys.include?(key)
                pokemon_obj[key] = value
            end
        }
        pokemon_obj.to_json
    end

    # def add_avestats(name)
    #     data = Pokemon.get_pokemon(this.name)

    #     #filters the parsed response to include the key/value pairs as specified by the keys in array_keys
    #     pokemon_obj = {}
    #     array_keys = ["id", "base_experience", "abilities", "stats", "name", "sprites", "species", "types"] 
    #     data.each{ |key, value|
    #         if array_keys.include?(key)
    #             pokemon_obj[key] = value
    #         end
    #     }
    #     pokemon_obj
    # end


    def self.find_all(array)
        modarr = array.first.split(',').map{|id| id.to_i}
        Pokemon.select{ |pokemon|
            array.include?(pokemon.id)
        }
    end

    
end