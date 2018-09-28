class PokemonsController < ApplicationController

    def index
        @pokemons = Pokemon.all
        render json: @pokemons      
    end

    def show
    end

    def new
    end

    def create
        #Pokemon.get_pokemon(name of pokemon type from front end)
        #Pokemon.new(inputs from front end)

    end

    def edit
    end

    def update
    end

    def delete
    end

    def search
        @input = params["input"]
        @searchedPokemon = Pokemon.get_pokemon(@input)
        render json: @searchedPokemon
    end
end
