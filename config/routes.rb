Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :restaurants
  # Defines the root path route ("/")

  # # get "restaurants", to: "restaurants#index"
  # # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # get "restaurants/:id/edit", to: "restaurants#edit"
  # patch "restaurants/:id", to: "restaurants#update"
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  # post "restaurants/:restaurant_id/reviews", to: "reviews#create"
  # get "restaurants/:restaurant_id/reviews/new", to: "reviews#new"
  # delete "restaurants/:id", to: "restaurants#destroy"
  # delete "reviews/:id", to: "reviews#destroy"
  # root "articles#index"
end
