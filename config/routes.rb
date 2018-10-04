Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/users', to: 'users#index'
      get '/validate', to: 'users#validate'
      post '/register', to: 'users#create'
      post '/login', to: 'auth#create'
      
      get '/pokemons', to: 'pokemons#index'
      post '/pokemons/new', to: 'pokemons#create'
      post '/pokemons/search', to: 'pokemons#search'
      patch '/pokemons/:id', to: 'pokemons#update'
      delete '/pokemons/:id', to: 'pokemons#delete'
      
      get '/poketeams', to: 'poketeams#index'
      post '/poketeams/new', to: 'poketeams#create'
      get '/poketeams/:id', to: 'poketeams#show'
      patch '/poketeams/:id', to: 'poketeams#update'
      delete '/poketeams/:id', to: 'poketeams#delete'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
