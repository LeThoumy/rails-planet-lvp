Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"


  # get "/", to: "pages"
  get "/planets", to: "planets#index"
  # GET "/planets/:id", to:'planets#show'
  # GET "/planets/:planet_id/bookings/new", to: "booking#new"
  # POST '/planets/:planet_id/bookings', to: 'booking#create'
  # GET 'my_bookings', to:'bookings#my_bookings'
  # GET 'bookings/:id', to: "bookings#show"
  # GET "my_planets", to: "planets#my_planets"
  get '/planets/new', to: 'planets#new', as: :new_planet
  post '/planets', to: 'planets#create'
  # GET 'planets/:id/edit', to: 'planets#edit'
  # PATCH 'planets/:id', to: 'planets#update'
  # GET 'owner_bookings', to: "bookings#owner_bookings"
  # GEt 'bookings/:id', to: 'bookings#show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
