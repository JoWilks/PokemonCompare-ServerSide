Rails.application.routes.draw do
  resources :users

  get '/poketeams', to: 'poketeams#index'
  post '/poketeams/new', to: 'poketeams#create'
  patch '/poketeams/:id', to: 'poketeams#update'
  delete '/poketeams/:id', to: 'poketeams#delete'

  get '/pokemons', to: 'pokemons#index'
  post '/pokemons/new', to: 'pokemons#create'
  post '/pokemons/search', to: 'pokemons#search'
  patch '/pokemons/:id', to: 'pokemons#update'
  delete '/pokemons/:id', to: 'pokemons#delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
