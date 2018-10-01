class PoketeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id
  has_many :pokemons

    class PokemonSerializer < ActiveModel::Serializer
      attributes :id, :nickname, :name
    end

end
