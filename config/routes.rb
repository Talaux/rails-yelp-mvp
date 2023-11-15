Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root  to: "pages#home"

  resources :restaurants

  # get "/restaurants/:id", to: "restaurants#show", as: :restaurant
  # get "/restaurants", to: "restaurants#index", as: :restaurants
  # get "/restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "/restaurants", to: "restaurants#create"

  get "/restaurants/restaurant_id", to: "restaurants#show", as: :show_restaurant_reviews
  get "/restaurants/restaurant_id/reviews/new", to: "reviews#new", as: :new_restaurant_review
  post "/restaurants/restaurants_id/reviews", to: "reviews#create"
end
