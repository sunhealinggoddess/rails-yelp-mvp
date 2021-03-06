Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# Read All
# get "restaurants", to: "restaurants#index"
# # Create
# get "restaurants/new", to: "restaurants#new"
# post "restaurants", to: "restaurants#create"
# # Read One
# get "restaurants/:id", to: "restaurants#show", as: :restaurant
# # update
# get "restaurants/:id/edit", to: "restaurants#edit"
# patch "restaurants/:id", to: "restaurants#update"
# # Delete
# delete "restaurants/:id", to: "restaurants#destroy"
# end
  resources :restaurants, only: [:create, :show, :index, :new] do
    resources :reviews, only: [:create, :new]
  end
end
