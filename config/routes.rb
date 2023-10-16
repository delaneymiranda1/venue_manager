Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/shows', to: 'shows#index'
  get '/shows/:id', to: 'shows#show'
  get '/venues', to: 'venues#index'
  get '/venues/:id', to: 'venues#show'
  get '/venues/:id/shows', to: 'venue_shows#index'
  get '/venue_shows', to: 'venue_shows#index'
end
