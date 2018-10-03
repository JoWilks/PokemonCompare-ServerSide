class Api::V1::PoketeamsController < ApplicationController

    def index
        poketeams = Poketeam.all
        render json: poketeams      
    end

    def create
        poketeam = Poketeam.new(poketeam_params)
        poketeam.user_id = current_user.id
        if poketeam.save
            render json: poketeam, status: :accepted
        else 
            render json: {errors: poketeam.errors.full_messages}, status: :unprocessible_entity
        end
    end


    def update
        poketeam = Poketeam.find(params["id"])
        poketeam.update(poketeam_params)
        pokemons = Pokemon.find_all(params["pokemon_ids"])
        poketeam.user_id = current_user.id
        poketeam.pokemons = pokemons
        
        if poketeam.save
            render json: poketeam, status: :accepted
        else 
            render json: {errors: poketeam.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def delete
        poketeam = Poketeam.find(params[:id])
        poketeam.destroy
        if poketeam
            render json: {status: "deleted"}
        else
            render json: {errors: poketeam.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

  def poketeam_params
    params.permit(:name)
  end
    
end
