Rails.application.routes.draw do
  devise_for :users
  root to: "planets#index"


  resources :planets do
    resources :bookings, only: [:new, :create, :show]
  end
  get "my_planets", to: "planets#my_planets"
  get "my_travels", to: "bookings#my_travels", as: :my_travels
  patch '/bookings/:id/accepted', to: "bookings#accepted", as: :accepted
  patch '/bookings/:id/declined', to: "bookings#declined", as: :declined

  # GET "/planets/:planet_id/bookings/new", to: "booking#new"
  # POST '/planets/:planet_id/bookings', to: 'booking#create'
  get 'my_bookings', to: 'bookings#my_bookings'
  # GET 'bookings/:id', to: "bookings#show"
  # GET "my_planets", to: "planets#my_planets"
  # GET 'planets/new', to: 'planets#new'
  # POST 'planets', to: 'planets#create'
  # GET 'planets/:id/edit', to: 'planets#edit'
  # PATCH 'planets/:id', to: 'planets#update'
  get 'owner_bookings', to: "bookings#owner_bookings"
  # GEt 'bookings/:id', to: 'bookings#show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
