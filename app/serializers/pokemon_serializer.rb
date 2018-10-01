class PokemonSerializer < ActiveModel::Serializer
  attributes :user_id, :id, :nickname, :name, :nature, :level, :attack, :special_attack, :defence, :special_defence, :speed, :hp, :averagepokemonstats 
  has_many :poketeams
end
