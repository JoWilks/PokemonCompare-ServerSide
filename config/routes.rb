Rails.application.routes.draw do
  resources :poke_teams
  resources :users

  get '/pokemons', to: 'pokemons#index'
  post '/pokemons/new', to: 'pokemons#create'
  post '/pokemons/search', to: 'pokemons#search'
  patch '/pokemons/:id', to: 'pokemons#update'
  delete '/pokemons/:id', to: 'pokemons#delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
