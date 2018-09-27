class Pokemon < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :poke_teams
end
