Rails.application.routes.draw do
  resources :pokemons
  resources :poke_teams
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
