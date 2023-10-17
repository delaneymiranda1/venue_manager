Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/", to: "welcome#index"

  get "/venues", to: "venues#index"
  get "/venues/new", to: "venues#new"
  get "/venues/:id", to: "venues#show"
  post "/venues", to: "venues#create"
  get "/venues/:id/edit", to: "venues#edit"
  patch "/venues/:id", to: "venues#update"
  delete "/venues/:id", to: "venues#delete"

  get "/shows", to: "shows#index"
  get "/shows/:id", to: "shows#show"
  get "/shows/:id/edit", to: "shows#edit"
  patch "/shows/:id", to: "shows#update"
  delete "/shows/:id", to: "shows#delete"

  get "/venues/:id/shows", to: "venue_shows#index"
  get "/venues/:id/shows/new", to: "venue_shows#new"
  post "/venues/:id/shows", to: "venue_shows#create"
  get "/venues/:id/shows/sort", to: "venue_shows#sort"
end
