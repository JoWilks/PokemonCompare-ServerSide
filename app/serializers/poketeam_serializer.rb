class PoketeamSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :pokemons

    class PokemonSerializer < ActiveModel::Serializer
      attributes :id, :nickname, :name
    end

end
