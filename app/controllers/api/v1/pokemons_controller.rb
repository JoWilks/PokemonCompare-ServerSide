class Api::V1::PokemonsController < ApplicationController
    skip_before_action :authorized, only: [:search]

    def index
        user = current_user
        pokemons = user.pokemons
        if user
            render json: pokemons 
        else 
            render json: {error: 'Not a valid user.'} , status: 400
        end
    end


    def create
        pokeData = Pokemon.get_pokemon(params["name"])
        pokemon = Pokemon.new(pokemon_params)
        pokemon.user_id = current_user.id
        pokemon.averagepokemonstats = pokeData
        if pokemon.save
            render json: pokemon, status: :accepted
        else 
            render json: {errors: pokemon.errors.full_messages}, status: :unprocessible_entity
        end
    end


    def update
        pokemon = Pokemon.find(params["id"])
        pokemon.update(pokemon_params)
        if pokemon.save
            render json: pokemon, status: :accepted
        else 
            render json: {errors: pokemon.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def delete
        @pokemon = Pokemon.find(params[:id])
        @pokemon.destroy
        if @pokemon
            render json: {status: "deleted"}
        else
            render json: {errors: @pokemon.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def search
        @input = params["input"]
        @searchedPokemon = Pokemon.get_pokemon(@input)
        render json: @searchedPokemon
    end

    private

  def pokemon_params
    params.permit(:nickname, :name, :nature, :level, :attack, :special_attack, :defence, :special_defence, :speed, :hp)
  end


end
